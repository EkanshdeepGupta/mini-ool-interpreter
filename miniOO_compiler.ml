open AbstractSyntax
let rec print_aexpr a = ...;;
let rec print_bexpr a = ...;;
let rec print_program p = ...
and print_stmtlist sl = ...
and print_stmt s = ...;;
let lexbuf = Lexing.from_channel stdin in
try
print_program (Parser.prog Lexer.token lexbuf)
with
| Lexer.Error msg ->
Printf.fprintf stderr "%s%!" msg
| Parser.Error ->
Printf.fprintf stderr "At offset %d: syntax error.\n%!"
(Lexing.lexeme_start lexbuf);;
 
