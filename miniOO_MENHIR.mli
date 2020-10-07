
(* The type of tokens. *)

type token = 
  | WHILE
  | VAR_DECL
  | VAR of (string)
  | TIMES
  | SKIP
  | SEMICOLON
  | RPAREN
  | PROC_DECL
  | PLUS
  | PARALLEL
  | NUM of (int)
  | NULL
  | MINUS
  | MALLOC
  | LT
  | LPAREN
  | LEQ
  | IF
  | GT
  | GEQ
  | FIELD of (string)
  | EQUALITY
  | EOL
  | ELSE
  | DIV
  | DEREFERENCE
  | COLON
  | BOOL of (bool)
  | ASSIGN

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (unit)
