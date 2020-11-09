open AbstractSyntax;;

module VarSet = Set.Make(String);;

let rec check_prog (Stmtlist p)= check_stmt_list p VarSet.empty 

and
check_stmt_list p v0 = match p with
  Empty -> false
| While (b, l) -> (check_bool b v0) or (check_stmt_list l v0) 
| If (b, l1, l2) -> (check_bool b v0) or (check_stmt_list l1 v0) or (check_stmt_list l2 v0)
| Atom l -> (check_stmt_list l v0)
| Parallel (l1, l2) -> (check_stmt_list l1 v0) or (check_stmt_list l2 v0)
| Stmt (c, l) -> match c with
	| Declare v -> (check_stmt_list l (VarSet.add v v0))
	| Call (i1, i2) -> (check_iden i1 v0) or (check_iden i2 v0) or (check_stmt_list l v0)
	| Malloc v -> not (VarSet.mem v v0) or (check_stmt_list l v0)
	| Assign (i, e) -> (check_iden i v0) or (check_exp e v0) or (check_stmt_list l v0)
	| Skip -> (check_stmt_list l v0)

and
check_exp e v0 = match e with 
  Num n -> false
| Arith (e1, aO, e2) -> (check_exp e1 v0) or (check_exp e2 v0)
| Iden i -> check_iden i v0
| Null -> false
| Proc (v, l) -> check_stmt_list l (VarSet.add v v0)

and
check_iden i v0 = match i with
  Var v -> not (VarSet.mem v v0)
| Deref (v,i) -> not (VarSet.mem v v0) 

and
check_bool b v0 = match b with
  Bool b0 -> false
| Expression (e1, bO, e2) -> (check_exp e1 v0) or (check_exp e2 v0)

(* To be amended *)
let static_check = check_prog
(* static_check (Stmtlist p) = if not staticCheck (Stmtlist p) then executeProg (Stmtlist p) else    *)