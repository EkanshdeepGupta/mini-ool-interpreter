type boolOperator = Lt | Gt | Leq | Geq | Eq
type arithOperator = Plus | Minus | Times | Div

type var = string

type iden =
| Var of var
| Deref of var * iden

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
| Call of iden * iden
| Malloc of var
| Assign of iden * expr
| Skip

and

stmtlist = 
| Empty
| While of boolexp * stmtlist 
| If of boolexp * stmtlist * stmtlist (* 1st stmtlist if boolexp is true, 2nd for `else`. *) 
| Stmt of stmt * stmtlist
| Atom of stmtlist
| Parallel of stmtlist * stmtlist

type prog = Stmtlist of stmtlist