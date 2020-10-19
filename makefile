all: delete
	@echo "### Lexer:"
	ocamllex miniOO_LEX.mll
	@echo "### Parser specification:"
	menhir miniOO_MENHIR.mly
	@echo "# Compilation of the lexer and parser:"
	ocamlc -c miniOO_MENHIR.mli
	ocamlc -c miniOO_LEX.ml
	ocamlc -c miniOO_MENHIR.ml
	@echo "# compilation of the calculator:"
	ocamlc -c main.ml
	@echo "# linking of the lexer, parser & calculator:"
	ocamlc -o main miniOO_LEX.cmo miniOO_MENHIR.cmo main.cmo

delete:
	/bin/rm -f main main.cmi main.cmo miniOO_LEX.cmi miniOO_LEX.cmo miniOO_LEX.ml miniOO_MENHIR.cmi miniOO_MENHIR.cmo miniOO_MENHIR.ml miniOO_MENHIR.mli makefile~
