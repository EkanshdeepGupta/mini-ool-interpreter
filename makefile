all: delete
	ocamlc -g -c abstractSyntax.ml operationalTypes.ml printStuff.ml staticSemantics.ml operationalSemantics.ml 
	@echo "### Lexer:"
	ocamllex miniOO_LEX.mll
	@echo "### Parser specification:"
	menhir --explain miniOO_MENHIR.mly
	@echo "# Compilation of the lexer and parser:"
	ocamlc -g -c miniOO_MENHIR.mli
	ocamlc -g -c miniOO_LEX.ml
	ocamlc -g -c miniOO_MENHIR.ml
	@echo "# compilation of the main file:"
	ocamlc -g -c main.ml
	@echo "# linking of the lexer, parser & everything else:"
	ocamlc -g -o main abstractSyntax.cmo operationalTypes.cmo printStuff.cmo staticSemantics.cmo operationalSemantics.cmo miniOO_LEX.cmo miniOO_MENHIR.cmo main.cmo

delete:
	/bin/rm -f main main.cmi main.cmo miniOO_LEX.cmi miniOO_LEX.cmo miniOO_LEX.ml miniOO_MENHIR.cmi miniOO_MENHIR.cmo miniOO_MENHIR.ml miniOO_MENHIR.mli miniOO_MENHIR.conflicts
	/bin/rm -f abstractSyntax.cmi abstractSyntax.cmo operationalSemantics.cmi operationalSemantics.cmo operationalTypes.cmi operationalTypes.cmo printStuff.cmi printStuff.cmo staticSemantics.cmi staticSemantics.cmo makefile~
