(* File calculatorLEX.mll *)
{
open MiniOO_MENHIR;; (* Type token defined in miniOO_MENHIR.mli *)
exception Eof;;
}
rule token = parse
  | [' ' '\t' '\n'] { token lexbuf } (* skip blanks and tabs *) (* removed newline token *)
  | "true" { BOOL true }
  | "false" { BOOL false }
  | "null" { NULL }
  | "proc" { PROC_DECL }
  | "var" { VAR_DECL }
  | "malloc" { MALLOC }
  | "skip" { SKIP }
  | "while" { WHILE }
  | "if" { IF }
  | "else" { ELSE }
  | "|||" { PARALLEL }
  | "atom" { ATOM }
  | (['a'-'z'])(['a'-'z'] | ['A'-'Z'] | ['0'-'9'])* as idt { VAR idt }
  | (['A'-'Z'])(['a'-'z'] | ['A'-'Z'] | ['0'-'9'])* as idt { FIELD idt }
  | ['0'-'9']+ as num { NUM (int_of_string num) }
  | "==" { EQUALITY } (* decide whether use a string or two chars *)
  | "<=" { LEQ }
  | ">=" { GEQ }
  | '{' { LBRACE }
  | '}' { RBRACE }
  | '<' { LT }
  | '>' { GT }  
  | ':' { COLON }
  | ';' { SEMICOLON }
  | '=' { ASSIGN }
  | '.' { DEREFERENCE }
  | '+' { PLUS }
  | '-' { MINUS }
  | '*' { TIMES }  
  | '/' { DIV }  
  | '(' { LPAREN }
  | ')' { RPAREN }  
  | eof { EOF }

{

}