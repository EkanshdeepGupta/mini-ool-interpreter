open AbstractSyntax
open StaticSemantics
open OperationalSemantics

(* let rec print_aexpr a = ...;;
let rec print_bexpr a = ...;;
let rec print_program p = ...
and print_stmtlist sl = ...
and print_stmt s = ...;; *)

let rec print_boolOperator bO = match bO with
  Lt -> print_string "<"
| Gt -> print_string ">"
| Leq -> print_string "<="
| Geq -> print_string ">="
| Eq -> print_string "=="

and
print_arithOperator ao = match ao with
  Plus -> print_string "+"
| Minus -> print_string "-"
| Times -> print_string "*"
| Div -> print_string "/"

and
print_iden i = match i with
  Var v -> print_string v; print_string " "
| Deref (v1, v2) -> print_string "Deref: "; print_string v1; print_iden v2 

and
print_expr e = match e with
  Num n -> print_int n; print_string " "
| Arith (e1, ao, e2) -> print_expr e1; print_arithOperator ao; print_expr e2
| Iden i -> print_iden i
| Null -> print_string "Null"
| Proc (v, sl) -> print_string "Proc: "; print_string v; print_stmtlist sl

and
print_boolexp b = match b with
  Bool b -> Printf.printf "%B" b
| Expression (e1, bO, e2) -> print_expr e1; print_boolOperator bO; print_expr e2

and
print_stmt s = match s with
  Declare v -> print_string "Declare: "; print_string v; print_newline ()
| Call (id, e) -> print_string "Call: "; print_iden id; print_expr e; print_newline ()
| Malloc v -> print_string "Malloc: "; print_string v; print_newline ()
| Assign (id, e) -> print_string "Assign: "; print_iden id; print_expr e; print_newline ()
| Skip -> print_string "Skip: "; print_newline ()
| While (b, s) -> print_string "While: "; print_boolexp b; print_stmtlist s
| If (b, s1, s2) -> print_string "If: "; print_boolexp b; print_stmtlist s1; print_stmtlist s2
| Atom l -> print_string "Atom: "; print_stmtlist l
| Parallel (l1, l2) -> print_string "Parallel: "; print_stmtlist l1; print_string "|||"; print_stmtlist l2

and
print_stmtlist sl = match sl with
  Empty -> ()
| Stmt (s, s2) -> print_stmt s; print_stmtlist s2

and
print_prog (Stmtlist p) = print_stmtlist p;;

let lexbuf = (Lexing.from_channel stdin) in
  try
    if (static_check (MiniOO_MENHIR.prog MiniOO_LEX.token lexbuf)) then  ((Stack.create ()), [], 0) else operational_semantics (MiniOO_MENHIR.prog MiniOO_LEX.token lexbuf)
  with
| MiniOO_MENHIR.Error ->
Printf.fprintf stderr "At offset %d: syntax error.\n%!" (Lexing.lexeme_start lexbuf); ((Stack.create ()), [], 0)
  
(* | MiniOO_LEX.Error msg ->
Printf.fprintf stderr "%s%!" msg *)
