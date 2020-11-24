open AbstractSyntax;;
open StaticSemantics;;
open OperationalTypes;;
open OperationalSemantics;;
open PrintStuff;;

let ic = open_in Sys.argv.(1) in
    let lexbuf = (Lexing.from_channel ic) in
        let abstractSyntaxTree = try
            MiniOO_MENHIR.prog MiniOO_LEX.token lexbuf
            with
            | MiniOO_MENHIR.Error -> (Printf.fprintf stderr "Parser failed. At offset %d: syntax error.\n%!" (Lexing.lexeme_start lexbuf); (MiniOO_MENHIR.prog MiniOO_LEX.token lexbuf))
            | MiniOO_LEX.Failure msg -> (Printf.fprintf stderr "%s%!" msg; (MiniOO_MENHIR.prog MiniOO_LEX.token lexbuf))

            in
            (if (static_check abstractSyntaxTree) then
                print_string "Static check failed.\n" 
            else 
                (print_string (string_of_prog abstractSyntaxTree); print_string "\n\n\n"; print_string (string_of_state (operational_semantics abstractSyntaxTree)); print_newline () ) )
(*   try
  with
| MiniOO_MENHIR.Error ->
Printf.fprintf stderr "At offset %d: syntax error.\n%!" (Lexing.lexeme_start lexbuf);
 *)  
(* | MiniOO_LEX.Error msg ->
Printf.fprintf stderr "%s%!" msg *)
