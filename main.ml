open AbstractSyntax;;
open StaticSemantics;;
open OperationalTypes;;
open OperationalSemantics;;
open PrintStuff;;

let ic = open_in Sys.argv.(1) in
    let lexbuf = (Lexing.from_channel ic) in
        let abstractSyntaxTree = try
            Parser.prog Lexer.token lexbuf
            with
            | Parser.Error -> raise (Failure (Printf.sprintf "Parser failed. At offset %d: syntax error.\n%!" (Lexing.lexeme_start lexbuf)))
            | Lexer.Failure msg -> raise (Failure (Printf.sprintf "Lexer Failed. %s%!" msg))

            in (
                if (static_check abstractSyntaxTree) then
                    print_string "Static check failed.\n" 
                else (
                    print_string "ABSTRACT SYNTAX TREE:\n";
                    print_string (string_of_prog abstractSyntaxTree);
                    print_string "\n\n\n\n";
                    print_string "PROGRAM OUTPUT:\n";
                    print_string ("\n\n\nFINAL STATE:\n" ^ (string_of_state (operational_semantics abstractSyntaxTree)));
                    print_newline () 
                )
            )