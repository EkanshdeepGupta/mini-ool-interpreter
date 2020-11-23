open AbstractSyntax;;
open StaticSemantics;;
open OperationalTypes;;
open OperationalSemantics;;
open PrintStuff;;

let lexbuf = (Lexing.from_channel stdin) in
  let abstractSyntaxTree = MiniOO_MENHIR.prog MiniOO_LEX.token lexbuf in
    if (static_check abstractSyntaxTree) then
      print_string "Static check failed."
    else print_string (string_of_prog abstractSyntaxTree); print_string "\n\n\n"; print_string (string_of_state (operational_semantics abstractSyntaxTree)); print_newline ()
(*   try
  with
| MiniOO_MENHIR.Error ->
Printf.fprintf stderr "At offset %d: syntax error.\n%!" (Lexing.lexeme_start lexbuf);
 *)  
(* | MiniOO_LEX.Error msg ->
Printf.fprintf stderr "%s%!" msg *)
