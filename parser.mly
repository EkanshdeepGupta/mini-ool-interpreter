%{ (* header *)
open AbstractSyntax
%} /* declarations */

%token EOF NULL PROC_DECL VAR_DECL MALLOC  /* lexer tokens */
%token SKIP WHILE IF ELSE PARALLEL ATOM PRINT
%token EQUALITY LEQ GEQ LT GT
%token COLON SEMICOLON ASSIGN DEREFERENCE
%token PLUS MINUS TIMES DIV LPAREN RPAREN LBRACE RBRACE
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
    c=cmd SEMICOLON l=cmds {Stmt (c, l)}
  | LBRACE l=cmds RBRACE {l} /* decide how to deal with blocks */
  | {Empty}

cmd :
    VAR_DECL v=VAR {Declare v}
  | i=iden LPAREN e=expr RPAREN {Call (i, e)}
  | MALLOC LPAREN v=VAR RPAREN {Malloc v}
  | i=iden ASSIGN e=expr {Assign (i,e)}
  | WHILE LPAREN b=boolean RPAREN l=cmds {While (b, l)}
  | IF LPAREN b=boolean RPAREN l1=cmds ELSE l2=cmds {If (b, l1, l2)}
  | ATOM LPAREN l=cmds RPAREN {Atom l}
  | LBRACE l1=cmds PARALLEL l2=cmds RBRACE {Parallel (l1, l2)}
  | PRINT LPAREN e=expr RPAREN {Print e}
  | SKIP {Skip}

boolean :
    b=BOOL {Bool b}
  | e1=expr EQUALITY e2=expr {Expression (e1, Eq, e2)}
  | e1=expr LT e2=expr {Expression (e1, Lt, e2)}
  | e1=expr GT e2=expr {Expression (e1, Gt, e2)}
  | e1=expr LEQ e2=expr {Expression (e1, Leq, e2)}
  | e1=expr GEQ e2=expr {Expression (e1, Geq, e2)}

expr :
    LPAREN e=expr RPAREN {e}
  | n=NUM {Num n}
  | MINUS n=expr %prec UMINUS {match n with
    | Num n -> Num (-1 * n)
    | _ -> raise (Failure "Parsing error. - only applies to integers")
  }
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
