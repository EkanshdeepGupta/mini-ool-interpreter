
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VAR_DECL
    | VAR of (
# 10 "miniOO_MENHIR.mly"
       (string)
# 13 "miniOO_MENHIR.ml"
  )
    | TIMES
    | SKIP
    | SEMICOLON
    | RPAREN
    | PROC_DECL
    | PLUS
    | PARALLEL
    | NUM of (
# 11 "miniOO_MENHIR.mly"
       (int)
# 25 "miniOO_MENHIR.ml"
  )
    | NULL
    | MINUS
    | MALLOC
    | LT
    | LPAREN
    | LEQ
    | IF
    | GT
    | GEQ
    | FIELD of (
# 10 "miniOO_MENHIR.mly"
       (string)
# 39 "miniOO_MENHIR.ml"
  )
    | EQUALITY
    | EOF
    | ELSE
    | DIV
    | DEREFERENCE
    | COLON
    | BOOL of (
# 12 "miniOO_MENHIR.mly"
       (bool)
# 50 "miniOO_MENHIR.ml"
  )
    | ASSIGN
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState65
  | MenhirState62
  | MenhirState59
  | MenhirState56
  | MenhirState53
  | MenhirState51
  | MenhirState46
  | MenhirState44
  | MenhirState42
  | MenhirState40
  | MenhirState38
  | MenhirState35
  | MenhirState32
  | MenhirState30
  | MenhirState28
  | MenhirState25
  | MenhirState22
  | MenhirState21
  | MenhirState18
  | MenhirState10
  | MenhirState5
  | MenhirState3
  | MenhirState1
  | MenhirState0

# 1 "miniOO_MENHIR.mly"
   (* header *)
open AbstractSyntax

# 98 "miniOO_MENHIR.ml"

let rec _menhir_run38 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 103 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | MINUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | NULL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run40 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 129 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | MINUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | NULL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run42 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 155 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | MINUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | NULL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run44 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 181 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | MINUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | NULL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 207 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | MINUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | NULL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run25 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 233 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | MINUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | NULL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run27 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 259 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv255 * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 267 "miniOO_MENHIR.ml"
    )) = Obj.magic _menhir_stack in
    ((let ((_menhir_stack, _menhir_s), _, (e : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 272 "miniOO_MENHIR.ml"
    ))) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 279 "miniOO_MENHIR.ml"
    ) = 
# 53 "miniOO_MENHIR.mly"
                         (e)
# 283 "miniOO_MENHIR.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)

and _menhir_run28 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 290 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | MINUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | NULL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run32 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 316 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | MINUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | NULL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_run30 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 342 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | MINUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | NULL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_iden_fields : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 373 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv249 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 382 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 388 "miniOO_MENHIR.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv247 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 394 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((i : (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 400 "miniOO_MENHIR.ml"
        )) : (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 404 "miniOO_MENHIR.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (f : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 409 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 415 "miniOO_MENHIR.ml"
        ) = 
# 70 "miniOO_MENHIR.mly"
                                      (Deref (f, i))
# 419 "miniOO_MENHIR.ml"
         in
        _menhir_goto_iden_fields _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)) : 'freshtv250)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv253 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 427 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 433 "miniOO_MENHIR.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv251 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 439 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((i : (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 445 "miniOO_MENHIR.ml"
        )) : (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 449 "miniOO_MENHIR.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 454 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 460 "miniOO_MENHIR.ml"
        ) = 
# 66 "miniOO_MENHIR.mly"
                                    (Deref (v, i))
# 464 "miniOO_MENHIR.ml"
         in
        _menhir_goto_iden _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)) : 'freshtv254)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 473 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 483 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv173 * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 505 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)) : 'freshtv176)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv179 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 514 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 518 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv177 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 524 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 528 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (n1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 533 "miniOO_MENHIR.ml"
        ))), _, (n2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 537 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 543 "miniOO_MENHIR.ml"
        ) = 
# 57 "miniOO_MENHIR.mly"
                          (Arith (n1, Times, n2))
# 547 "miniOO_MENHIR.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)) : 'freshtv180)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv185 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 555 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 559 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | EOF | EQUALITY | GEQ | GT | IF | LEQ | LT | MALLOC | MINUS | PLUS | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv181 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 573 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 577 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (n1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 582 "miniOO_MENHIR.ml"
            ))), _, (n2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 586 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 592 "miniOO_MENHIR.ml"
            ) = 
# 58 "miniOO_MENHIR.mly"
                         (Arith (n1, Plus, n2))
# 596 "miniOO_MENHIR.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv182)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv183 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 606 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 610 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)) : 'freshtv186)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv189 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 619 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 623 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv187 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 629 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 633 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (n1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 638 "miniOO_MENHIR.ml"
        ))), _, (n2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 642 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 648 "miniOO_MENHIR.ml"
        ) = 
# 56 "miniOO_MENHIR.mly"
                        (Arith (n1, Div, n2))
# 652 "miniOO_MENHIR.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv188)) : 'freshtv190)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv195 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 660 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 664 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | EOF | EQUALITY | GEQ | GT | IF | LEQ | LT | MALLOC | MINUS | PLUS | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv191 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 678 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 682 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (n1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 687 "miniOO_MENHIR.ml"
            ))), _, (n2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 691 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 697 "miniOO_MENHIR.ml"
            ) = 
# 59 "miniOO_MENHIR.mly"
                          (Arith (n1, Minus, n2))
# 701 "miniOO_MENHIR.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv193 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 711 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 715 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)) : 'freshtv196)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 724 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | EOF | EQUALITY | GEQ | GT | IF | LEQ | LT | MALLOC | MINUS | PLUS | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv197 * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 738 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (n : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 743 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 749 "miniOO_MENHIR.ml"
            ) = 
# 55 "miniOO_MENHIR.mly"
                 (let fn (Num n) = n in Num (-1 * (fn n)))
# 753 "miniOO_MENHIR.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv199 * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 763 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)) : 'freshtv202)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 772 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | EQUALITY ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv203 * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 804 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)) : 'freshtv206)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv211 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 813 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 817 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | EOF | EQUALITY | GEQ | GT | IF | LEQ | LT | MALLOC | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv207 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 835 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 839 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 844 "miniOO_MENHIR.ml"
            ))), _, (e2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 848 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 854 "miniOO_MENHIR.ml"
            ) = 
# 47 "miniOO_MENHIR.mly"
                       (Expression (e1, Lt, e2))
# 858 "miniOO_MENHIR.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv209 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 868 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 872 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)) : 'freshtv212)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv217 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 881 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 885 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | EOF | EQUALITY | GEQ | GT | IF | LEQ | LT | MALLOC | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv213 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 903 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 907 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 912 "miniOO_MENHIR.ml"
            ))), _, (e2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 916 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 922 "miniOO_MENHIR.ml"
            ) = 
# 49 "miniOO_MENHIR.mly"
                        (Expression (e1, Leq, e2))
# 926 "miniOO_MENHIR.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv214)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv215 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 936 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 940 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)) : 'freshtv218)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv223 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 949 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 953 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | EOF | EQUALITY | GEQ | GT | IF | LEQ | LT | MALLOC | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv219 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 971 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 975 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 980 "miniOO_MENHIR.ml"
            ))), _, (e2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 984 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 990 "miniOO_MENHIR.ml"
            ) = 
# 48 "miniOO_MENHIR.mly"
                       (Expression (e1, Gt, e2))
# 994 "miniOO_MENHIR.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv220)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv221 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1004 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1008 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)) : 'freshtv224)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv229 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1017 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1021 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | EOF | EQUALITY | GEQ | GT | IF | LEQ | LT | MALLOC | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv225 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1039 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1043 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1048 "miniOO_MENHIR.ml"
            ))), _, (e2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1052 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1058 "miniOO_MENHIR.ml"
            ) = 
# 50 "miniOO_MENHIR.mly"
                        (Expression (e1, Geq, e2))
# 1062 "miniOO_MENHIR.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv226)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv227 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1072 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1076 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv235 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1085 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1089 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | EOF | EQUALITY | GEQ | GT | IF | LEQ | LT | MALLOC | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv231 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1107 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1111 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1116 "miniOO_MENHIR.ml"
            ))), _, (e2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1120 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1126 "miniOO_MENHIR.ml"
            ) = 
# 46 "miniOO_MENHIR.mly"
                             (Expression (e1, Eq, e2))
# 1130 "miniOO_MENHIR.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv233 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1140 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1144 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)) : 'freshtv236)
    | MenhirState1 | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1153 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | EQUALITY ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv237 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1183 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)) : 'freshtv240)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv245 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1192 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1196 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv241 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1214 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1218 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (i : (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1223 "miniOO_MENHIR.ml"
            ))), _, (e : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1227 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1233 "miniOO_MENHIR.ml"
            ) = 
# 40 "miniOO_MENHIR.mly"
                         (Assign (i,e))
# 1237 "miniOO_MENHIR.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv243 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1247 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1251 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)) : 'freshtv246)
    | _ ->
        _menhir_fail ()

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | MINUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | NULL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_goto_boolean : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1284 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1294 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv163 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1304 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv161 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1311 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (b : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1316 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1323 "miniOO_MENHIR.ml"
            ) = 
# 44 "miniOO_MENHIR.mly"
                            (b)
# 1327 "miniOO_MENHIR.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)) : 'freshtv164)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv165 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1337 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)) : 'freshtv168)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1346 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | MALLOC ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | SKIP ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | VAR _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
        | VAR_DECL ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | ELSE ->
            _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51) : 'freshtv170)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1374 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | MALLOC ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | SKIP ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | VAR _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | VAR_DECL ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | DIV | ELSE | EOF | EQUALITY | GEQ | GT | LEQ | LT | MINUS | PLUS | RPAREN | SEMICOLON | TIMES ->
            _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv172)
    | _ ->
        _menhir_fail ()

and _menhir_goto_cmds : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1403 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv129 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1413 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1417 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv125 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1427 "miniOO_MENHIR.ml"
            )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1431 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | MALLOC ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | SKIP ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | VAR_DECL ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | DIV | ELSE | EOF | EQUALITY | GEQ | GT | LEQ | LT | MINUS | PLUS | RPAREN | SEMICOLON | TIMES ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv126)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv127 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1461 "miniOO_MENHIR.ml"
            )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1465 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)) : 'freshtv130)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv133 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1474 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1478 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1482 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv131 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1488 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1492 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1496 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (b : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1501 "miniOO_MENHIR.ml"
        ))), _, (l1 : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1505 "miniOO_MENHIR.ml"
        ))), _, (l2 : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1509 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _4 = () in
        let _1 = () in
        let _v : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1516 "miniOO_MENHIR.ml"
        ) = 
# 33 "miniOO_MENHIR.mly"
                                      (If (b, l1, l2))
# 1520 "miniOO_MENHIR.ml"
         in
        _menhir_goto_cmds _menhir_env _menhir_stack _menhir_s _v) : 'freshtv132)) : 'freshtv134)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv137 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1528 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1532 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv135 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1538 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1542 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (c : (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1547 "miniOO_MENHIR.ml"
        ))), _, (l : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1551 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1557 "miniOO_MENHIR.ml"
        ) = 
# 31 "miniOO_MENHIR.mly"
                           (Stmt (c, l))
# 1561 "miniOO_MENHIR.ml"
         in
        _menhir_goto_cmds _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)) : 'freshtv138)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv141 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1569 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1573 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv139 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1579 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1583 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1588 "miniOO_MENHIR.ml"
        ))), _, (l : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1592 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1599 "miniOO_MENHIR.ml"
        ) = 
# 62 "miniOO_MENHIR.mly"
                                 (Proc (v, l))
# 1603 "miniOO_MENHIR.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)) : 'freshtv142)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv145 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1611 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1615 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv143 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1621 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1625 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (b : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1630 "miniOO_MENHIR.ml"
        ))), _, (l : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1634 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1640 "miniOO_MENHIR.ml"
        ) = 
# 32 "miniOO_MENHIR.mly"
                           (While (b, l))
# 1644 "miniOO_MENHIR.ml"
         in
        _menhir_goto_cmds _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)) : 'freshtv146)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1652 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv155 * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1662 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv153 * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1668 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (l : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1673 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 14 "miniOO_MENHIR.mly"
      (AbstractSyntax.prog)
# 1679 "miniOO_MENHIR.ml"
            ) = 
# 28 "miniOO_MENHIR.mly"
               (Stmtlist l)
# 1683 "miniOO_MENHIR.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv151) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 14 "miniOO_MENHIR.mly"
      (AbstractSyntax.prog)
# 1691 "miniOO_MENHIR.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv149) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 14 "miniOO_MENHIR.mly"
      (AbstractSyntax.prog)
# 1699 "miniOO_MENHIR.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv147) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 14 "miniOO_MENHIR.mly"
      (AbstractSyntax.prog)
# 1707 "miniOO_MENHIR.ml"
            )) : (
# 14 "miniOO_MENHIR.mly"
      (AbstractSyntax.prog)
# 1711 "miniOO_MENHIR.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv148)) : 'freshtv150)) : 'freshtv152)) : 'freshtv154)) : 'freshtv156)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv157 * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1721 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)) : 'freshtv160)
    | _ ->
        _menhir_fail ()

and _menhir_goto_iden : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1731 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState1 | MenhirState56 | MenhirState18 | MenhirState46 | MenhirState44 | MenhirState42 | MenhirState40 | MenhirState38 | MenhirState35 | MenhirState21 | MenhirState32 | MenhirState30 | MenhirState28 | MenhirState25 | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1741 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1747 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (i : (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1752 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1757 "miniOO_MENHIR.ml"
        ) = 
# 60 "miniOO_MENHIR.mly"
           (Iden i)
# 1761 "miniOO_MENHIR.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv106)) : 'freshtv108)
    | MenhirState0 | MenhirState65 | MenhirState10 | MenhirState62 | MenhirState59 | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1769 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv109 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1779 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | MINUS ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | NULL ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | NUM _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | PROC_DECL ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv110)
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv111 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1805 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv112)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv113 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1823 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)) : 'freshtv116)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1832 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1836 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv119 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1846 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1850 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv117 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1857 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1861 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (i1 : (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1866 "miniOO_MENHIR.ml"
            ))), _, (i2 : (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1870 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1877 "miniOO_MENHIR.ml"
            ) = 
# 38 "miniOO_MENHIR.mly"
                                  (Call (i1, i2))
# 1881 "miniOO_MENHIR.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv118)) : 'freshtv120)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv121 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1891 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1895 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)) : 'freshtv124)
    | _ ->
        _menhir_fail ()

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1905 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DEREFERENCE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1917 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FIELD _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv100)
    | ASSIGN | DIV | ELSE | EOF | EQUALITY | GEQ | GT | IF | LEQ | LPAREN | LT | MALLOC | MINUS | PLUS | RPAREN | SEMICOLON | SKIP | TIMES | VAR _ | VAR_DECL | WHILE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1933 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (f : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1938 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _v : (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1943 "miniOO_MENHIR.ml"
        ) = 
# 69 "miniOO_MENHIR.mly"
            (Var f)
# 1947 "miniOO_MENHIR.ml"
         in
        _menhir_goto_iden_fields _menhir_env _menhir_stack _menhir_s _v) : 'freshtv102)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1957 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)

and _menhir_goto_cmd : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1965 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv97 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1973 "miniOO_MENHIR.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1983 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | MALLOC ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | SKIP ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | VAR _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
        | VAR_DECL ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | DIV | ELSE | EOF | EQUALITY | GEQ | GT | LEQ | LT | MINUS | PLUS | RPAREN | SEMICOLON | TIMES ->
            _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62) : 'freshtv94)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 2013 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)) : 'freshtv98)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2030 "miniOO_MENHIR.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv85 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2041 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | MALLOC ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | SKIP ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | VAR_DECL ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | DIV | ELSE | EOF | EQUALITY | GEQ | GT | LEQ | LT | MINUS | PLUS | RPAREN | SEMICOLON | TIMES ->
                _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv86)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv87 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2071 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)) : 'freshtv90)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "miniOO_MENHIR.mly"
       (int)
# 2086 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv83) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 11 "miniOO_MENHIR.mly"
       (int)
# 2096 "miniOO_MENHIR.ml"
    )) : (
# 11 "miniOO_MENHIR.mly"
       (int)
# 2100 "miniOO_MENHIR.ml"
    )) = _v in
    ((let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2105 "miniOO_MENHIR.ml"
    ) = 
# 54 "miniOO_MENHIR.mly"
          (Num n)
# 2109 "miniOO_MENHIR.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv84)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv81) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2123 "miniOO_MENHIR.ml"
    ) = 
# 61 "miniOO_MENHIR.mly"
         (Null)
# 2127 "miniOO_MENHIR.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv82)

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | MINUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | NULL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | LPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | MINUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NULL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "miniOO_MENHIR.mly"
       (bool)
# 2182 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv79) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 12 "miniOO_MENHIR.mly"
       (bool)
# 2192 "miniOO_MENHIR.ml"
    )) : (
# 12 "miniOO_MENHIR.mly"
       (bool)
# 2196 "miniOO_MENHIR.ml"
    )) = _v in
    ((let _v : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 2201 "miniOO_MENHIR.ml"
    ) = 
# 45 "miniOO_MENHIR.mly"
           (Bool b)
# 2205 "miniOO_MENHIR.ml"
     in
    _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv80)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 2217 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 2226 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv35 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 2235 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 2239 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 2248 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 2257 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 2266 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2275 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2284 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2293 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2302 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2311 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2325 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2334 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2343 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2352 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv69 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2376 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2385 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2394 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv78)

and _menhir_reduce16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 2413 "miniOO_MENHIR.ml"
    ) = 
# 34 "miniOO_MENHIR.mly"
    (Empty)
# 2417 "miniOO_MENHIR.ml"
     in
    _menhir_goto_cmds _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | LPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | MINUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | NULL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2458 "miniOO_MENHIR.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        let ((v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2466 "miniOO_MENHIR.ml"
        )) : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2470 "miniOO_MENHIR.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 2477 "miniOO_MENHIR.ml"
        ) = 
# 37 "miniOO_MENHIR.mly"
                   (Declare v)
# 2481 "miniOO_MENHIR.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)) : 'freshtv28)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2495 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DEREFERENCE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2507 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FIELD _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv20)
    | ASSIGN | DIV | ELSE | EOF | EQUALITY | GEQ | GT | IF | LEQ | LPAREN | LT | MALLOC | MINUS | PLUS | RPAREN | SEMICOLON | SKIP | TIMES | VAR _ | VAR_DECL | WHILE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2523 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2528 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _v : (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 2533 "miniOO_MENHIR.ml"
        ) = 
# 65 "miniOO_MENHIR.mly"
          (Var v)
# 2537 "miniOO_MENHIR.ml"
         in
        _menhir_goto_iden _menhir_env _menhir_stack _menhir_s _v) : 'freshtv22)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2547 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 2562 "miniOO_MENHIR.ml"
    ) = 
# 41 "miniOO_MENHIR.mly"
         (Skip)
# 2566 "miniOO_MENHIR.ml"
     in
    _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VAR _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv9 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2588 "miniOO_MENHIR.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv5 * _menhir_state)) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2599 "miniOO_MENHIR.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv3 * _menhir_state)) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2606 "miniOO_MENHIR.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), (v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2611 "miniOO_MENHIR.ml"
                ))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 2619 "miniOO_MENHIR.ml"
                ) = 
# 39 "miniOO_MENHIR.mly"
                               (Malloc v)
# 2623 "miniOO_MENHIR.ml"
                 in
                _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)) : 'freshtv6)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv7 * _menhir_state)) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2633 "miniOO_MENHIR.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)) : 'freshtv10)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv11 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | LPAREN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | MINUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | NULL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 14 "miniOO_MENHIR.mly"
      (AbstractSyntax.prog)
# 2692 "miniOO_MENHIR.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MALLOC ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SKIP ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | VAR_DECL ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        _menhir_reduce16 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 2733 "miniOO_MENHIR.ml"
