all: delete
	ocamlc -g -c str.cma abstractSyntax.ml operationalTypes.ml printStuff.ml staticSemantics.ml operationalSemantics.ml 
	@echo "### Lexer:"
	ocamllex lexer.mll
	@echo "### Parser specification:"
	menhir --explain parser.mly
	@echo "# Compilation of the lexer and parser:"
	ocamlc -g -c parser.mli
	ocamlc -g -c lexer.ml
	ocamlc -g -c parser.ml
	@echo "# compilation of the main file:"
	ocamlc -g -c main.ml
	@echo "# linking of the lexer, parser & everything else:"
	ocamlc -g -o main  str.cma abstractSyntax.cmo operationalTypes.cmo printStuff.cmo staticSemantics.cmo operationalSemantics.cmo lexer.cmo parser.cmo main.cmo

delete:
	/bin/rm -f main main.cmi main.cmo lexer.cmi lexer.cmo lexer.ml parser.cmi parser.cmo parser.ml parser.mli parser.conflicts
	/bin/rm -f abstractSyntax.cmi abstractSyntax.cmo operationalSemantics.cmi operationalSemantics.cmo operationalTypes.cmi operationalTypes.cmo printStuff.cmi printStuff.cmo staticSemantics.cmi staticSemantics.cmo makefile~
