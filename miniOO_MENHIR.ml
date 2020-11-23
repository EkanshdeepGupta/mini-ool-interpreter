
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
    | RBRACE
    | PROC_DECL
    | PLUS
    | PARALLEL
    | NUM of (
# 11 "miniOO_MENHIR.mly"
       (int)
# 26 "miniOO_MENHIR.ml"
  )
    | NULL
    | MINUS
    | MALLOC
    | LT
    | LPAREN
    | LEQ
    | LBRACE
    | IF
    | GT
    | GEQ
    | FIELD of (
# 10 "miniOO_MENHIR.mly"
       (string)
# 41 "miniOO_MENHIR.ml"
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
# 52 "miniOO_MENHIR.ml"
  )
    | ATOM
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
  | MenhirState75
  | MenhirState71
  | MenhirState67
  | MenhirState64
  | MenhirState59
  | MenhirState56
  | MenhirState54
  | MenhirState52
  | MenhirState47
  | MenhirState45
  | MenhirState43
  | MenhirState41
  | MenhirState39
  | MenhirState36
  | MenhirState33
  | MenhirState31
  | MenhirState29
  | MenhirState26
  | MenhirState23
  | MenhirState22
  | MenhirState19
  | MenhirState18
  | MenhirState10
  | MenhirState5
  | MenhirState3
  | MenhirState1
  | MenhirState0

# 1 "miniOO_MENHIR.mly"
   (* header *)
open AbstractSyntax

# 104 "miniOO_MENHIR.ml"

let rec _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 109 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MINUS ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NULL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NUM _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 135 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MINUS ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NULL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NUM _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 161 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MINUS ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NULL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NUM _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 187 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | MINUS ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NULL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NUM _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 213 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | MINUS ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NULL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NUM _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run26 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 239 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | MINUS ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | NULL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | NUM _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_run28 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 265 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv289 * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 273 "miniOO_MENHIR.ml"
    )) = Obj.magic _menhir_stack in
    ((let ((_menhir_stack, _menhir_s), _, (e : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 278 "miniOO_MENHIR.ml"
    ))) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 285 "miniOO_MENHIR.ml"
    ) = 
# 57 "miniOO_MENHIR.mly"
                         (e)
# 289 "miniOO_MENHIR.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv290)

and _menhir_run29 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 296 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | MINUS ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NULL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NUM _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run33 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 322 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | MINUS ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | NULL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | NUM _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run31 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 348 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | MINUS ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | NULL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | NUM _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_iden_fields : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 379 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv283 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 388 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 394 "miniOO_MENHIR.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv281 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 400 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((i : (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 406 "miniOO_MENHIR.ml"
        )) : (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 410 "miniOO_MENHIR.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (f : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 415 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 421 "miniOO_MENHIR.ml"
        ) = 
# 74 "miniOO_MENHIR.mly"
                                      (Deref (f, i))
# 425 "miniOO_MENHIR.ml"
         in
        _menhir_goto_iden_fields _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)) : 'freshtv284)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv287 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 433 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 439 "miniOO_MENHIR.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv285 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 445 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((i : (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 451 "miniOO_MENHIR.ml"
        )) : (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 455 "miniOO_MENHIR.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 460 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 466 "miniOO_MENHIR.ml"
        ) = 
# 70 "miniOO_MENHIR.mly"
                                    (Deref (v, i))
# 470 "miniOO_MENHIR.ml"
         in
        _menhir_goto_iden _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)) : 'freshtv288)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 479 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 489 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv201 * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 511 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)) : 'freshtv204)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv207 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 520 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 524 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv205 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 530 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 534 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (n1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 539 "miniOO_MENHIR.ml"
        ))), _, (n2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 543 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 549 "miniOO_MENHIR.ml"
        ) = 
# 61 "miniOO_MENHIR.mly"
                          (Arith (n1, Times, n2))
# 553 "miniOO_MENHIR.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv206)) : 'freshtv208)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv213 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 561 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 565 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | ATOM | ELSE | EQUALITY | GEQ | GT | IF | LBRACE | LEQ | LT | MALLOC | MINUS | PLUS | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv209 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 579 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 583 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (n1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 588 "miniOO_MENHIR.ml"
            ))), _, (n2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 592 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 598 "miniOO_MENHIR.ml"
            ) = 
# 62 "miniOO_MENHIR.mly"
                         (Arith (n1, Plus, n2))
# 602 "miniOO_MENHIR.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv210)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv211 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 612 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 616 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)) : 'freshtv214)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv217 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 625 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 629 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv215 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 635 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 639 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (n1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 644 "miniOO_MENHIR.ml"
        ))), _, (n2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 648 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 654 "miniOO_MENHIR.ml"
        ) = 
# 60 "miniOO_MENHIR.mly"
                        (Arith (n1, Div, n2))
# 658 "miniOO_MENHIR.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv216)) : 'freshtv218)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv223 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 666 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 670 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | ATOM | ELSE | EQUALITY | GEQ | GT | IF | LBRACE | LEQ | LT | MALLOC | MINUS | PLUS | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv219 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 684 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 688 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (n1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 693 "miniOO_MENHIR.ml"
            ))), _, (n2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 697 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 703 "miniOO_MENHIR.ml"
            ) = 
# 63 "miniOO_MENHIR.mly"
                          (Arith (n1, Minus, n2))
# 707 "miniOO_MENHIR.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv220)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv221 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 717 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 721 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)) : 'freshtv224)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv227 * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 730 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 736 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (n : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 741 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 747 "miniOO_MENHIR.ml"
        ) = 
# 59 "miniOO_MENHIR.mly"
                              (let fn (Num n) = n in Num (-1 * (fn n)))
# 751 "miniOO_MENHIR.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv226)) : 'freshtv228)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv231 * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 759 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | EQUALITY ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv229 * _menhir_state) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 791 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)) : 'freshtv232)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv237 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 800 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 804 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | ATOM | ELSE | IF | LBRACE | MALLOC | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv233 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 822 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 826 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 831 "miniOO_MENHIR.ml"
            ))), _, (e2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 835 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 841 "miniOO_MENHIR.ml"
            ) = 
# 51 "miniOO_MENHIR.mly"
                       (Expression (e1, Lt, e2))
# 845 "miniOO_MENHIR.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv235 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 855 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 859 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv243 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 868 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 872 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | ATOM | ELSE | IF | LBRACE | MALLOC | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv239 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 890 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 894 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 899 "miniOO_MENHIR.ml"
            ))), _, (e2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 903 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 909 "miniOO_MENHIR.ml"
            ) = 
# 53 "miniOO_MENHIR.mly"
                        (Expression (e1, Leq, e2))
# 913 "miniOO_MENHIR.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv241 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 923 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 927 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)) : 'freshtv244)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 936 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 940 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | ATOM | ELSE | IF | LBRACE | MALLOC | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv245 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 958 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 962 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 967 "miniOO_MENHIR.ml"
            ))), _, (e2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 971 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 977 "miniOO_MENHIR.ml"
            ) = 
# 52 "miniOO_MENHIR.mly"
                       (Expression (e1, Gt, e2))
# 981 "miniOO_MENHIR.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv247 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 991 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 995 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)) : 'freshtv250)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1004 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1008 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | ATOM | ELSE | IF | LBRACE | MALLOC | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv251 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1026 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1030 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1035 "miniOO_MENHIR.ml"
            ))), _, (e2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1039 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1045 "miniOO_MENHIR.ml"
            ) = 
# 54 "miniOO_MENHIR.mly"
                        (Expression (e1, Geq, e2))
# 1049 "miniOO_MENHIR.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1059 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1063 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)) : 'freshtv256)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1072 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1076 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | ATOM | ELSE | IF | LBRACE | MALLOC | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv257 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1094 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1098 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1103 "miniOO_MENHIR.ml"
            ))), _, (e2 : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1107 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1113 "miniOO_MENHIR.ml"
            ) = 
# 50 "miniOO_MENHIR.mly"
                             (Expression (e1, Eq, e2))
# 1117 "miniOO_MENHIR.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv259 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1127 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1131 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)
    | MenhirState1 | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1140 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | EQUALITY ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv263 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1170 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)) : 'freshtv266)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv273 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1179 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1183 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv269 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1199 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1203 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv267 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1210 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1214 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (i : (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1219 "miniOO_MENHIR.ml"
            ))), _, (e : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1223 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1230 "miniOO_MENHIR.ml"
            ) = 
# 38 "miniOO_MENHIR.mly"
                                (Call (i, e))
# 1234 "miniOO_MENHIR.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv268)) : 'freshtv270)
        | TIMES ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv271 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1246 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1250 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)) : 'freshtv274)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1259 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1263 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv275 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1281 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1285 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (i : (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1290 "miniOO_MENHIR.ml"
            ))), _, (e : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1294 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1300 "miniOO_MENHIR.ml"
            ) = 
# 40 "miniOO_MENHIR.mly"
                         (Assign (i,e))
# 1304 "miniOO_MENHIR.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv276)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 1314 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1318 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)) : 'freshtv280)
    | _ ->
        _menhir_fail ()

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | MINUS ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | NULL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | NUM _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_goto_boolean : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1351 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv195 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1361 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv191 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1371 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv189 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1378 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (b : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1383 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1390 "miniOO_MENHIR.ml"
            ) = 
# 48 "miniOO_MENHIR.mly"
                            (b)
# 1394 "miniOO_MENHIR.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv190)) : 'freshtv192)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv193 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1404 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)) : 'freshtv196)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1413 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ATOM ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | IF ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LBRACE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | MALLOC ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | SKIP ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | VAR _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | VAR_DECL ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | ELSE ->
            _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv198)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1445 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ATOM ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | IF ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | LBRACE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MALLOC ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | SKIP ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | VAR _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | VAR_DECL ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | SEMICOLON ->
            _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv200)
    | _ ->
        _menhir_fail ()

and _menhir_goto_cmds : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1478 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * _menhir_state)) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1488 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv129 * _menhir_state)) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1498 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv127 * _menhir_state)) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1505 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (l : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1510 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1518 "miniOO_MENHIR.ml"
            ) = 
# 43 "miniOO_MENHIR.mly"
                              (Atom l)
# 1522 "miniOO_MENHIR.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)) : 'freshtv130)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv131 * _menhir_state)) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1532 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv137 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1541 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1545 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv135 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1551 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1555 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (c : (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1560 "miniOO_MENHIR.ml"
        ))), _, (l : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1564 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1570 "miniOO_MENHIR.ml"
        ) = 
# 32 "miniOO_MENHIR.mly"
                           (Stmt (c, l))
# 1574 "miniOO_MENHIR.ml"
         in
        _menhir_goto_cmds _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)) : 'freshtv138)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv143 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1582 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1586 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv139 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1596 "miniOO_MENHIR.ml"
            )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1600 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ATOM ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | IF ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LBRACE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | MALLOC ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | SKIP ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | VAR_DECL ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | SEMICOLON ->
                _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv140)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv141 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1634 "miniOO_MENHIR.ml"
            )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1638 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)) : 'freshtv144)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv147 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1647 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1651 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1655 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv145 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1661 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1665 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1669 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (b : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1674 "miniOO_MENHIR.ml"
        ))), _, (l1 : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1678 "miniOO_MENHIR.ml"
        ))), _, (l2 : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1682 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _4 = () in
        let _1 = () in
        let _v : (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1689 "miniOO_MENHIR.ml"
        ) = 
# 42 "miniOO_MENHIR.mly"
                                      (If (b, l1, l2))
# 1693 "miniOO_MENHIR.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)) : 'freshtv148)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv157 * _menhir_state) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1701 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PARALLEL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv149 * _menhir_state) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1711 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ATOM ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | IF ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LBRACE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | MALLOC ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | SKIP ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | VAR_DECL ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | RBRACE ->
                _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv150)
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv153 * _menhir_state) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1743 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv151 * _menhir_state) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1750 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (l : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1755 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1762 "miniOO_MENHIR.ml"
            ) = 
# 33 "miniOO_MENHIR.mly"
                         (l)
# 1766 "miniOO_MENHIR.ml"
             in
            _menhir_goto_cmds _menhir_env _menhir_stack _menhir_s _v) : 'freshtv152)) : 'freshtv154)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv155 * _menhir_state) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1776 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)) : 'freshtv158)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv165 * _menhir_state) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1785 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1789 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv161 * _menhir_state) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1799 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1803 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv159 * _menhir_state) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1810 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1814 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (l1 : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1819 "miniOO_MENHIR.ml"
            ))), _, (l2 : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1823 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1831 "miniOO_MENHIR.ml"
            ) = 
# 44 "miniOO_MENHIR.mly"
                                           (Parallel (l1, l2))
# 1835 "miniOO_MENHIR.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)) : 'freshtv162)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv163 * _menhir_state) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1845 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1849 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)) : 'freshtv166)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv169 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1858 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1862 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv167 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1868 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1872 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1877 "miniOO_MENHIR.ml"
        ))), _, (l : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1881 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 1888 "miniOO_MENHIR.ml"
        ) = 
# 66 "miniOO_MENHIR.mly"
                                 (Proc (v, l))
# 1892 "miniOO_MENHIR.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)) : 'freshtv170)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv173 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1900 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1904 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv171 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1910 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1914 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (b : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 1919 "miniOO_MENHIR.ml"
        ))), _, (l : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1923 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 1929 "miniOO_MENHIR.ml"
        ) = 
# 41 "miniOO_MENHIR.mly"
                           (While (b, l))
# 1933 "miniOO_MENHIR.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)) : 'freshtv174)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187 * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1941 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv183 * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1951 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv181 * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1957 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (l : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 1962 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 14 "miniOO_MENHIR.mly"
      (AbstractSyntax.prog)
# 1968 "miniOO_MENHIR.ml"
            ) = 
# 29 "miniOO_MENHIR.mly"
               (Stmtlist l)
# 1972 "miniOO_MENHIR.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv179) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 14 "miniOO_MENHIR.mly"
      (AbstractSyntax.prog)
# 1980 "miniOO_MENHIR.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv177) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 14 "miniOO_MENHIR.mly"
      (AbstractSyntax.prog)
# 1988 "miniOO_MENHIR.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv175) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 14 "miniOO_MENHIR.mly"
      (AbstractSyntax.prog)
# 1996 "miniOO_MENHIR.ml"
            )) : (
# 14 "miniOO_MENHIR.mly"
      (AbstractSyntax.prog)
# 2000 "miniOO_MENHIR.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv176)) : 'freshtv178)) : 'freshtv180)) : 'freshtv182)) : 'freshtv184)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv185 * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 2010 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)) : 'freshtv188)
    | _ ->
        _menhir_fail ()

and _menhir_goto_iden : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 2020 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState1 | MenhirState59 | MenhirState56 | MenhirState19 | MenhirState47 | MenhirState45 | MenhirState43 | MenhirState41 | MenhirState39 | MenhirState36 | MenhirState22 | MenhirState33 | MenhirState31 | MenhirState29 | MenhirState26 | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 2030 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 2036 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (i : (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 2041 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2046 "miniOO_MENHIR.ml"
        ) = 
# 64 "miniOO_MENHIR.mly"
           (Iden i)
# 2050 "miniOO_MENHIR.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv116)) : 'freshtv118)
    | MenhirState0 | MenhirState75 | MenhirState10 | MenhirState71 | MenhirState18 | MenhirState67 | MenhirState52 | MenhirState64 | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 2058 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv119 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 2068 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | MINUS ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | NULL ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | NUM _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | PROC_DECL ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv120)
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv121 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 2094 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | MINUS ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | NULL ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | NUM _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | PROC_DECL ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv122)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv123 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 2122 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)) : 'freshtv126)
    | _ ->
        _menhir_fail ()

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2132 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DEREFERENCE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2144 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FIELD _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv110)
    | ASSIGN | ATOM | DIV | ELSE | EQUALITY | GEQ | GT | IF | LBRACE | LEQ | LPAREN | LT | MALLOC | MINUS | PLUS | RPAREN | SEMICOLON | SKIP | TIMES | VAR _ | VAR_DECL | WHILE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2160 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (f : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2165 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _v : (
# 19 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 2170 "miniOO_MENHIR.ml"
        ) = 
# 73 "miniOO_MENHIR.mly"
            (Var f)
# 2174 "miniOO_MENHIR.ml"
         in
        _menhir_goto_iden_fields _menhir_env _menhir_stack _menhir_s _v) : 'freshtv112)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2184 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)

and _menhir_goto_cmd : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 2192 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv107 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 2200 "miniOO_MENHIR.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 2210 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ATOM ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | IF ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | LBRACE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | MALLOC ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | SKIP ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | VAR _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | VAR_DECL ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | DIV | ELSE | EOF | EQUALITY | GEQ | GT | LEQ | LT | MINUS | PARALLEL | PLUS | RBRACE | RPAREN | SEMICOLON | TIMES ->
            _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv104)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 2244 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)) : 'freshtv108)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2261 "miniOO_MENHIR.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv95 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2272 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ATOM ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | IF ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LBRACE ->
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
            | DIV | ELSE | EQUALITY | GEQ | GT | LEQ | LT | MINUS | PLUS | RPAREN | SEMICOLON | TIMES ->
                _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv96)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv97 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2306 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)) : 'freshtv100)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "miniOO_MENHIR.mly"
       (int)
# 2321 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv93) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 11 "miniOO_MENHIR.mly"
       (int)
# 2331 "miniOO_MENHIR.ml"
    )) : (
# 11 "miniOO_MENHIR.mly"
       (int)
# 2335 "miniOO_MENHIR.ml"
    )) = _v in
    ((let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2340 "miniOO_MENHIR.ml"
    ) = 
# 58 "miniOO_MENHIR.mly"
          (Num n)
# 2344 "miniOO_MENHIR.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv94)

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv91) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2358 "miniOO_MENHIR.ml"
    ) = 
# 65 "miniOO_MENHIR.mly"
         (Null)
# 2362 "miniOO_MENHIR.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv92)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | MINUS ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | NULL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | NUM _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | MINUS ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NULL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NUM _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "miniOO_MENHIR.mly"
       (bool)
# 2417 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv89) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 12 "miniOO_MENHIR.mly"
       (bool)
# 2427 "miniOO_MENHIR.ml"
    )) : (
# 12 "miniOO_MENHIR.mly"
       (bool)
# 2431 "miniOO_MENHIR.ml"
    )) = _v in
    ((let _v : (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 2436 "miniOO_MENHIR.ml"
    ) = 
# 49 "miniOO_MENHIR.mly"
           (Bool b)
# 2440 "miniOO_MENHIR.ml"
     in
    _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv90)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 2452 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv37 * _menhir_state) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 2461 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv39 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 2470 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 2474 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 2483 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 2492 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 2501 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (AbstractSyntax.boolexp)
# 2515 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2524 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2533 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2542 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2551 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2560 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2574 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2583 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2592 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (AbstractSyntax.expr)
# 2601 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv79 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2630 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2639 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2648 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv88)

and _menhir_reduce19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (
# 15 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmtlist)
# 2667 "miniOO_MENHIR.ml"
    ) = 
# 34 "miniOO_MENHIR.mly"
    (Empty)
# 2671 "miniOO_MENHIR.ml"
     in
    _menhir_goto_cmds _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | MINUS ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | NULL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | NUM _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
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
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2712 "miniOO_MENHIR.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state) = Obj.magic _menhir_stack in
        let ((v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2720 "miniOO_MENHIR.ml"
        )) : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2724 "miniOO_MENHIR.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 2731 "miniOO_MENHIR.ml"
        ) = 
# 37 "miniOO_MENHIR.mly"
                   (Declare v)
# 2735 "miniOO_MENHIR.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv30)) : 'freshtv32)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2749 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DEREFERENCE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2761 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FIELD _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv24)
    | ASSIGN | ATOM | DIV | ELSE | EQUALITY | GEQ | GT | IF | LBRACE | LEQ | LPAREN | LT | MALLOC | MINUS | PLUS | RPAREN | SEMICOLON | SKIP | TIMES | VAR _ | VAR_DECL | WHILE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2777 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2782 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _v : (
# 18 "miniOO_MENHIR.mly"
      (AbstractSyntax.iden)
# 2787 "miniOO_MENHIR.ml"
        ) = 
# 69 "miniOO_MENHIR.mly"
          (Var v)
# 2791 "miniOO_MENHIR.ml"
         in
        _menhir_goto_iden _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2801 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 2816 "miniOO_MENHIR.ml"
    ) = 
# 45 "miniOO_MENHIR.mly"
         (Skip)
# 2820 "miniOO_MENHIR.ml"
     in
    _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv22)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VAR _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv13 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2842 "miniOO_MENHIR.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv9 * _menhir_state)) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2853 "miniOO_MENHIR.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv7 * _menhir_state)) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2860 "miniOO_MENHIR.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), (v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2865 "miniOO_MENHIR.ml"
                ))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (
# 16 "miniOO_MENHIR.mly"
      (AbstractSyntax.stmt)
# 2873 "miniOO_MENHIR.ml"
                ) = 
# 39 "miniOO_MENHIR.mly"
                               (Malloc v)
# 2877 "miniOO_MENHIR.ml"
                 in
                _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)) : 'freshtv10)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv11 * _menhir_state)) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 2887 "miniOO_MENHIR.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)) : 'freshtv14)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv15 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ATOM ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | IF ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | LBRACE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | MALLOC ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | SKIP ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | VAR_DECL ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | PARALLEL | RBRACE ->
        _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | LPAREN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | MINUS ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | NULL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | NUM _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ATOM ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | IF ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | LBRACE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | MALLOC ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | SKIP ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | VAR _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
        | VAR_DECL ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | RPAREN ->
            _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv6)

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
# 3017 "miniOO_MENHIR.ml"
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
    | ATOM ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IF ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LBRACE ->
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
        _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 3062 "miniOO_MENHIR.ml"
