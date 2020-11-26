open AbstractSyntax;;
open Stack;;
open Printf;;
open OperationalTypes;;
open Str;;

(* Helper functions: *)

let rec string_of_list string_of_function l = "[ " ^ (string_of_list2 string_of_function l)
(* General function for lists. string_of_function converts elements of lists to strings*)

and
string_of_list2 string_of_function l = match l with
    | h::t -> string_of_function h ^ (if List.length t > 0 then ",\n" else "") ^ (string_of_list2 string_of_function t)
    | [] -> " ]"

let indent_string s = global_replace (regexp "\n") "\n\t" s


(* \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            String of Abstract Syntax Types:
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ *)

let rec string_of_boolOperator bO = match bO with
  Lt ->  "Lt"
| Gt ->  "Gt"
| Leq ->  "Leq"
| Geq ->  "Geq"
| Eq ->  "Eq"

and
string_of_arithOperator ao = match ao with
  Plus ->  "Plus"
| Minus ->  "Minus"
| Times ->  "Times"
| Div ->  "Div"

and
string_of_iden i = match i with
  Var v ->  "Var " ^ v
| Deref (v1, v2) ->  "Deref: (" ^ v1 ^ ", " ^ string_of_iden v2 ^ ")"

and
string_of_expr e = match e with
  Num n -> "Num " ^ string_of_int n
| Arith (e1, ao, e2) -> "Arith: (" ^ string_of_expr e1 ^ ", " ^ string_of_arithOperator ao ^ ", " ^ string_of_expr e2 ^ ")"
| Iden i -> "Iden: (" ^ string_of_iden i ^ ")"
| Null ->  "Null"
| Proc (v, sl) ->  "Proc: (" ^  v ^ ", " ^ string_of_stmtlist sl ^ ")"

and
string_of_boolexp b = match b with
  Bool b -> sprintf "%B" b
| Expression (e1, bO, e2) -> "Expression: (" ^ string_of_expr e1 ^ ", " ^ string_of_boolOperator bO ^ ", " ^ string_of_expr e2 ^ ")"

and
string_of_stmt s = match s with
  Declare v ->  "Declare: " ^  v
| Call (id, e) ->  "Call: ((" ^ string_of_iden id ^ "), Argument: " ^ string_of_expr e ^ ")"
| Malloc v ->  "Malloc: " ^  v
| Assign (id, e) ->  "Assign: (" ^ string_of_iden id ^ " := " ^ string_of_expr e ^ ")"
| Skip ->  "Skip. "
| While (b, s) ->  "While: (" ^ string_of_boolexp b ^ ", Then: " ^ string_of_stmtlist s ^ ")"
| If (b, s1, s2) ->  "If: (" ^ string_of_boolexp b ^ ", Then: " ^ string_of_stmtlist s1 ^ ", Else: " ^ string_of_stmtlist s2 ^ ")"
| Atom l ->  "Atom: (" ^ string_of_stmtlist l ^ ")"
| Parallel (l1, l2) ->  "Parallel: (" ^ string_of_stmtlist l1 ^  "|||" ^ string_of_stmtlist l2 ^ ")"
| Print i -> "Print: " ^ string_of_iden i

and
string_of_stmtlist sl = match sl with
  Empty -> ""
| Stmt (s, s2) -> "Stmtlist: (" ^ "\n\t" ^ indent_string (string_of_stmt s ^ "\n" ^ string_of_stmtlist s2) ^ "\n)"

and
string_of_prog (Stmtlist p) = string_of_stmtlist p


(* \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            String of Operational Types: 
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ *)

let rec string_of_loc l = match l with
    | Obj obj -> "Obj " ^ string_of_int obj
    | Null -> "Null"

and
string_of_tval tval = match tval with
    | Val value -> "Val " ^ (match value with
        | Field f -> "Field " ^ f
        | Int n -> "Int " ^ string_of_int n
        | Loc l -> "Loc " ^ string_of_loc l
        | Clo (v, l, stk) -> "Clo: (" ^ v ^ ", " ^ string_of_stmtlist l ^ ", " ^ string_of_stack stk ^ ")" )
    | Error -> "Error"

and
string_of_func_env (v,l) = sprintf "(%s, %s)" v (string_of_loc l);

and
string_of_env env = "Env: " ^ (string_of_list string_of_func_env env)

and
string_of_state (stk, hp, addr) = "Printing State: \nStack: " ^ string_of_stack stk ^ "\n\nHeap: " ^ string_of_heap hp ^ "\n\nAddress: " ^ string_of_int addr

and
string_of_stack stk = (Stack.fold string_of_stack_fold "[ " stk) ^ " ]"

and
string_of_stack_fold s elem = s ^ ", " ^ (string_of_stack_elem elem)

and
string_of_stack_elem elem = match elem with
  Decl env -> "(Decl - " ^ string_of_env env ^ ")"
| Call (env, stk2) -> "(Call - )" ^ string_of_env env (*^ string_of_stack stk2 ^ ")" *)
(* TO DO: This is causing Stack_overflow. Some infinite loop or something. Now sure why; have to debug *)

and
string_of_func_hp ((obj, s), tval) = sprintf "((%s, %s), %s)" (string_of_int obj) s (string_of_tval tval)

and
string_of_heap hp = string_of_list string_of_func_hp hp

and
string_of_heap_location (obj, s) = sprintf "(%s, %s)" (string_of_int obj) s