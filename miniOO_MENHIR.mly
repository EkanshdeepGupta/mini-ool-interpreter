%{ (* header *)

%} /* declarations */

%token EOL NULL PROC_DECL VAR_DECL MALLOC  /* lexer tokens */
%token SKIP WHILE IF ELSE PARALLEL
%token EQUALITY LEQ GEQ LT GT
%token COLON SEMICOLON ASSIGN DEREFERENCE
%token PLUS MINUS TIMES DIV LPAREN RPAREN
%token <string> VAR FIELD
%token <int> NUM
%token <bool> BOOL
%start prog                   /* the entry point */
%type <unit> prog  
%type <unit> cmds
%type <unit> cmd
%type <unit> expr
%type <unit> iden
%type <unit> iden_fields
%type <unit> boolean /* want boolean here */
%left PLUS MINUS          /* lowest precedence  */
%left TIMES DIV           /* medium precedence  */
%nonassoc UMINUS          /* highest precedence */

%% /* rules */

prog :
  cmds {}

cmds :
    cmd {}
  | cmd SEMICOLON cmds {}
  | WHILE boolean cmds {}
  | IF boolean cmds ELSE cmds {}

cmd :
    VAR_DECL VAR SEMICOLON {}
  | iden LPAREN iden RPAREN {}
  | MALLOC LPAREN VAR RPAREN {}
  | iden ASSIGN expr {}
  | SKIP {}

boolean :
    BOOL {}
  | expr LT expr {}
  | expr GT expr {}
  | expr LEQ expr {}
  | expr GEQ expr {}

expr :
    NUM {}
  | iden {}
  | NULL {}
  | PROC_DECL VAR COLON cmds {}

iden :
    VAR {}
  | VAR DEREFERENCE iden_fields {}

iden_fields :
    FIELD {}
  | FIELD DEREFERENCE iden_fields {}
