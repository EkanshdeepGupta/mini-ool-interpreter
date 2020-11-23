type boolOperator = Lt | Gt | Leq | Geq | Eq
type arithOperator = Plus | Minus | Times | Div

type var = string

type iden =
| Var of var
| Deref of var * iden (* Calling v.F <-- this action as "dereferencing". Too late to change xD *)

type expr =
| Num of int
| Arith of expr * arithOperator * expr
| Iden of iden
| Null
| Proc of var * stmtlist

and
boolexp = 
| Bool of bool
| Expression of expr * boolOperator * expr

and
stmt =
| Declare of var
| Call of iden * expr
| Malloc of var
| Assign of iden * expr
| While of boolexp * stmtlist 
| If of boolexp * stmtlist * stmtlist (* 1st stmtlist if boolexp is true, 2nd for `else`. *) 
| Atom of stmtlist
| Parallel of stmtlist * stmtlist
| Skip

and
stmtlist =
| Empty
| Stmt of stmt * stmtlist


type prog = Stmtlist of stmtlist