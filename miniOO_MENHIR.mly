%{ (* header *)
open AbstractSyntax
%} /* declarations */

%token EOF NULL PROC_DECL VAR_DECL MALLOC  /* lexer tokens */
%token SKIP WHILE IF ELSE PARALLEL
%token EQUALITY LEQ GEQ LT GT
%token COLON SEMICOLON ASSIGN DEREFERENCE
%token PLUS MINUS TIMES DIV LPAREN RPAREN
%token <string> VAR FIELD
%token <int> NUM
%token <bool> BOOL
%start prog                   /* the entry point */
%type <AbstractSyntax.prog> prog  
%type <AbstractSyntax.stmtlist> cmds
%type <AbstractSyntax.stmt> cmd
%type <AbstractSyntax.expr> expr
%type <AbstractSyntax.iden> iden
%type <AbstractSyntax.iden> iden_fields
%type <AbstractSyntax.boolexp> boolean /* want boolean here */
%left PLUS MINUS          /* lowest precedence  */
%left TIMES DIV           /* medium precedence  */
%nonassoc UMINUS          /* highest precedence */

%% /* rules */

prog :
  l = cmds EOF {Stmtlist l}

cmds :
    {Empty}
  | c=cmd SEMICOLON l=cmds {Stmt (c, l)}
  | WHILE b=boolean l=cmds {While (b, l)}
  | IF b=boolean l1=cmds ELSE l2=cmds {If (b, l1, l2)}

cmd :
    VAR_DECL v=VAR SEMICOLON {Declare v}
  | i1=iden LPAREN i2=iden RPAREN {Call (i1, i2)}
  | MALLOC LPAREN v=VAR RPAREN {Malloc v}
  | i=iden ASSIGN e=expr {Assign (i,e)}
  | SKIP {Skip}

boolean :
    LPAREN b=boolean RPAREN {b}
  | b=BOOL {Bool b}
  | e1=expr EQUALITY e2=expr {Expression (e1, Eq, e2)}
  | e1=expr LT e2=expr {Expression (e1, Lt, e2)}
  | e1=expr GT e2=expr {Expression (e1, Gt, e2)}
  | e1=expr LEQ e2=expr {Expression (e1, Leq, e2)}
  | e1=expr GEQ e2=expr {Expression (e1, Geq, e2)}

expr :
    LPAREN e=expr RPAREN {e}
  | n=NUM {Num n}
  | MINUS n=expr {let fn (Num n) = n in Num (-1 * (fn n))}
  | n1=expr DIV n2=expr {Arith (n1, Div, n2)}
  | n1=expr TIMES n2=expr {Arith (n1, Times, n2)}
  | n1=expr PLUS n2=expr {Arith (n1, Plus, n2)}
  | n1=expr MINUS n2=expr {Arith (n1, Minus, n2)}
  | i=iden {Iden i}
  | NULL {Null}
  | PROC_DECL v=VAR COLON l=cmds {Proc (v, l)}

iden :
    v=VAR {Var v}
  | v=VAR DEREFERENCE i=iden_fields {Deref (v, i)}

iden_fields :
    f=FIELD {Var f}
  | f=FIELD DEREFERENCE i=iden_fields {Deref (f, i)}
