open AbstractSyntax;;
open Stack;;

(* Implementing basic dictionary functions *)

let rec lookup x l = match l with
  [] -> raise Not_found
| (k,v)::t -> if k = x then v else lookup x t

let rec add (k, v) d  = match d with
  [] -> [(k,v)]
| (k', v')::t -> if k' = k then (k,v)::t else (k',v'):: (add (k, v) t)

(* Implementing all datatypes to execute programs *)
type object1 = int

and
location = 
| Obj of object1
| Null 

and
closure = var * stmtlist * stack

and
value = 
| Field of string (* Implementing fields as strings. Might want to revisit *)
| Int of int
| Loc of location
| Clo of closure

and
tainted_value = 
| Val of value
| Error

and 
environment = (var * location) list
(* Implementing environment as a dictionary. Will use above lookup and add functions to interact. *)
(* Strictly speaking, Env maps var to obj, but using location so that undeclared variables can be mapped to null. Although by static checking no instances of undeclared variables should make it here.*)

and
frame =
| Decl of environment
| Call of environment * stack

and
stack = frame Stack.t

and
heap = ((object1 * string) * tainted_value) list (* again using string for fields *)
(* Implementing heap as a dictionary. Will use above lookup and add functions to interact. *)

and
state = stack * heap * int 
(* Using an additional int to allocate new memory in heap *)

(* Not doing control and configurations. Don't see the use. *)


(* ----------------------------- *)

let rec stack_lookup (v : var) (stk : stack) = let new_stk = copy stk in stack_lookup_recurse v new_stk (* Making a copy to not destroy the original stack *) (* Returns location*)

and
stack_lookup_recurse (v : var) (stk: stack) = if is_empty stk then raise (Failure "Variable not found") else let frame = pop stk in
    let curr_frame_search = match frame with
        | Decl env -> (try lookup v env with Not_found -> Null)
        | Call (env, _) -> (try lookup v env with Not_found -> Null) (* Treating Null and Not_found as same. Might want to revisit this.*)
    in match curr_frame_search with
        | Null -> stack_lookup_recurse v stk
        | Obj obj -> obj

let rec operational_semantics (Stmtlist p) = exec_stmtlist p ((create ()), [], 0) (* Stack.create *)

and
exec_stmtlist (p : stmtlist) ((stk, hp, addr) : state) = match p with (* stack, heap, address *)
| Empty -> (stk, hp, addr)
| Stmt (c,l) -> match c with
    | Declare v -> push (Decl [(v, Obj addr)]) stk; let new_hp = add ((addr, "val"), Val (Loc Null)) hp in
        exec_stmtlist l (exec_block l (stk, new_hp, addr+1))
    (* Execution of a block is handled by this function separately. Not tagging blocks differently in code. *)
    | Call (i, e) -> let tval = eval_expr (Iden i) (stk, hp, addr) in (match tval with
        | Val (Clo (v, l1, stack)) -> push ( Call ([(v, Obj addr)], stk) ) stack; let new_hp = add ((addr, "val"), (eval_expr e (stk, hp, addr))) hp in exec_stmtlist l (exec_block l1 (stk, new_hp, addr+1))
        | _ -> raise (Failure "Could not call function") )
    | Malloc v -> let new_hp = add ((stack_lookup v stk, "val"), Val (Loc (Obj addr))) hp in exec_stmtlist l (stk, new_hp, addr+1)
    | Assign (i, e) -> let value = eval_expr e (stk, hp, addr) in (match value with
        | Error -> raise (Failure "Error evaluating expression")
        | Val val2 -> (match i with
            | Var v -> let new_hp = add ((stack_lookup v stk, "val"), value) hp in exec_stmtlist l (stk, new_hp, addr)
            | Deref (v, i) -> let new_hp = add ((eval_field v i (stk, hp , addr)), value) hp in exec_stmtlist l (stk, new_hp, addr) ) )
    | While (b, l1) -> if eval_bool b (stk, hp, addr) then let new_state = exec_stmtlist l1 (stk, hp, addr) in exec_stmtlist (Stmt (c,l)) new_state else exec_stmtlist l (stk, hp, addr)
    | If (b, l1, l2) -> if eval_bool b (stk, hp, addr) then let new_state = exec_stmtlist l1 (stk, hp, addr) in exec_stmtlist l new_state else let new_state = exec_stmtlist l2 (stk, hp, addr) in exec_stmtlist l new_state
    | Atom l1 -> exec_stmtlist l (exec_stmtlist l (stk, hp, addr))
    | Parallel (l1, l2) -> exec_stmtlist l (exec_stmtlist l2 (exec_stmtlist l1 (stk, hp, addr)))
    | Skip -> exec_stmtlist l (stk, hp, addr) (* TO DO: Implement Skip correctly. *)

and
exec_block (p: stmtlist ) ((stk, hp, addr) : state) = let (new_stk, new_hp, new_addr) = exec_stmtlist p (stk, hp, addr) in
    if is_empty new_stk then (new_stk, new_hp, new_addr) else let head = top new_stk in match head with
    | Decl env -> pop new_stk; (new_stk, new_hp, new_addr)
    | Call (env, stk1) -> (stk1, new_hp, new_addr)

(* eval_expr returns tainted_value *)
and
eval_expr e (stk, hp, addr) = match e with
| Num n -> Val (Int n)
| Arith (e1, ao, e2) -> let v1 = eval_expr e1 (stk, hp, addr) and v2 = eval_expr e2 (stk, hp, addr) in (match (v1,v2) with
    | (Val (Int n1), Val (Int n2)) -> (match ao with
        | Plus -> Val (Int (n1 + n2))
        | Minus -> Val (Int (n1 - n2))
        | Times -> Val (Int (n1 * n2))
        | Div -> Val (Int (n1 / n2)) )
    | _ -> raise (Failure "Arithmetic only allowed on integers") )
| Iden i -> (match i with
    | Var v -> lookup (stack_lookup v stk, "val") hp
    | Deref (v, i) -> lookup (eval_field v i (stk, hp, addr)) hp )
| Null -> Val (Loc Null)
| Proc (v, l) -> Val (Clo (v, l, stk))

(* eval_field returns (object1 * string) *)
and
eval_field v i (stk, hp, addr) = eval_field_helper i (stack_lookup v stk) (stk, hp, addr)

and
eval_field_helper i obj (stk, hp, addr) = match i with (* Checking that fields all start with capitals.*)
    | Var v -> if v != (String.capitalize_ascii v) then raise (Failure "Fields should start with capital letters") else (obj, v)
    | Deref (v,i2) -> if v != (String.capitalize_ascii v) then raise (Failure "Fields should start with capital letters") else match lookup (obj, v) hp with
        | Val (Loc (Obj new_obj)) -> eval_field_helper i2 new_obj (stk, hp, addr)
        | _ -> raise (Failure "Field doesn't exist.") (* Happens for instance if you try to look up a.B.C when a.B is not assigned new variable by malloc.*)

and
eval_bool b (stk, hp, addr) = match b with
| Bool bool_val -> bool_val
| Expression (e1, bo, e2) -> let v1 = eval_expr e1 (stk, hp, addr) and v2 = eval_expr e2 (stk, hp, addr) in match (v1,v2) with
    | (Val (Int n1), Val (Int n2)) -> (match bo with
        | Lt -> (n1 < n2)
        | Gt -> (n1 > n2)
        | Leq -> (n1 <= n2)
        | Geq -> (n1 >= n2)
        | Eq -> (n1 = n2) )
    | (Val (Loc l1), Val (Loc l2)) -> (match bo with
        | Eq -> (l1 = l2)
        | _ -> raise (Failure "Cannot compare Locations (can only check equality)") )
    | (Val (Clo c1), Val (Clo c2)) -> (match bo with
        | Eq -> (c1 = c2)
        | _ -> raise (Failure "Cannot compare Closures (can only check equality)") )
    | _ -> raise (Failure "Cannot compare objects of different types")