
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
    | EOL
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
  | MenhirState56
  | MenhirState52
  | MenhirState48
  | MenhirState45
  | MenhirState44
  | MenhirState43
  | MenhirState40
  | MenhirState37
  | MenhirState35
  | MenhirState34
  | MenhirState25
  | MenhirState23
  | MenhirState21
  | MenhirState19
  | MenhirState17
  | MenhirState11
  | MenhirState10
  | MenhirState5
  | MenhirState3
  | MenhirState1
  | MenhirState0

# 1 "miniOO_MENHIR.mly"
   (* header *)


# 95 "miniOO_MENHIR.ml"

let rec _menhir_reduce13 : _menhir_env -> (('ttv_tail * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 100 "miniOO_MENHIR.ml"
)) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 104 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s), _, (_2 : (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 110 "miniOO_MENHIR.ml"
    ))), _, (_3 : (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 114 "miniOO_MENHIR.ml"
    ))) = _menhir_stack in
    let _1 = () in
    let _v : (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 120 "miniOO_MENHIR.ml"
    ) = 
# 33 "miniOO_MENHIR.mly"
                       ()
# 124 "miniOO_MENHIR.ml"
     in
    _menhir_goto_cmds _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce12 : _menhir_env -> (('ttv_tail * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 131 "miniOO_MENHIR.ml"
))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 135 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (_1 : (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 141 "miniOO_MENHIR.ml"
    ))), _, (_3 : (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 145 "miniOO_MENHIR.ml"
    ))) = _menhir_stack in
    let _2 = () in
    let _v : (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 151 "miniOO_MENHIR.ml"
    ) = 
# 32 "miniOO_MENHIR.mly"
                       ()
# 155 "miniOO_MENHIR.ml"
     in
    _menhir_goto_cmds _menhir_env _menhir_stack _menhir_s _v

and _menhir_run43 : _menhir_env -> (('ttv_tail * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 162 "miniOO_MENHIR.ml"
)) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 166 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IF ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MALLOC ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | SKIP ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | VAR_DECL ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_goto_cmds : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 192 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv179 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 202 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 206 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv177 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 220 "miniOO_MENHIR.ml"
            )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 224 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)) : 'freshtv180)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv183 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 233 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 237 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv181 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 251 "miniOO_MENHIR.ml"
            )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 255 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)) : 'freshtv184)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv185 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 264 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 268 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_reduce12 _menhir_env (Obj.magic _menhir_stack) : 'freshtv186)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv189 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 276 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 280 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 284 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv187 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 290 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 294 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 298 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (_2 : (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 303 "miniOO_MENHIR.ml"
        ))), _, (_3 : (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 307 "miniOO_MENHIR.ml"
        ))), _, (_5 : (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 311 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _4 = () in
        let _1 = () in
        let _v : (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 318 "miniOO_MENHIR.ml"
        ) = 
# 34 "miniOO_MENHIR.mly"
                              ()
# 322 "miniOO_MENHIR.ml"
         in
        _menhir_goto_cmds _menhir_env _menhir_stack _menhir_s _v) : 'freshtv188)) : 'freshtv190)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv191 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 330 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 334 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_reduce12 _menhir_env (Obj.magic _menhir_stack) : 'freshtv192)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv193 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 342 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 346 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_reduce13 _menhir_env (Obj.magic _menhir_stack) : 'freshtv194)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv197 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 354 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 358 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv195 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 364 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 368 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (_2 : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 373 "miniOO_MENHIR.ml"
        ))), _, (_4 : (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 377 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 384 "miniOO_MENHIR.ml"
        ) = 
# 54 "miniOO_MENHIR.mly"
                             ()
# 388 "miniOO_MENHIR.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)) : 'freshtv198)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv199 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 396 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 400 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_reduce13 _menhir_env (Obj.magic _menhir_stack) : 'freshtv200)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 408 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 414 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 419 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _v : (
# 14 "miniOO_MENHIR.mly"
      (unit)
# 424 "miniOO_MENHIR.ml"
        ) = 
# 28 "miniOO_MENHIR.mly"
       ()
# 428 "miniOO_MENHIR.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 14 "miniOO_MENHIR.mly"
      (unit)
# 436 "miniOO_MENHIR.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 14 "miniOO_MENHIR.mly"
      (unit)
# 444 "miniOO_MENHIR.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 14 "miniOO_MENHIR.mly"
      (unit)
# 452 "miniOO_MENHIR.ml"
        )) : (
# 14 "miniOO_MENHIR.mly"
      (unit)
# 456 "miniOO_MENHIR.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv202)) : 'freshtv204)) : 'freshtv206)) : 'freshtv208)) : 'freshtv210)
    | _ ->
        _menhir_fail ()

and _menhir_goto_iden_fields : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "miniOO_MENHIR.mly"
      (unit)
# 465 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 474 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 19 "miniOO_MENHIR.mly"
      (unit)
# 480 "miniOO_MENHIR.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 486 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : (
# 19 "miniOO_MENHIR.mly"
      (unit)
# 492 "miniOO_MENHIR.ml"
        )) : (
# 19 "miniOO_MENHIR.mly"
      (unit)
# 496 "miniOO_MENHIR.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 501 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 19 "miniOO_MENHIR.mly"
      (unit)
# 507 "miniOO_MENHIR.ml"
        ) = 
# 62 "miniOO_MENHIR.mly"
                                  ()
# 511 "miniOO_MENHIR.ml"
         in
        _menhir_goto_iden_fields _menhir_env _menhir_stack _menhir_s _v) : 'freshtv170)) : 'freshtv172)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 519 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 19 "miniOO_MENHIR.mly"
      (unit)
# 525 "miniOO_MENHIR.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 531 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : (
# 19 "miniOO_MENHIR.mly"
      (unit)
# 537 "miniOO_MENHIR.ml"
        )) : (
# 19 "miniOO_MENHIR.mly"
      (unit)
# 541 "miniOO_MENHIR.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 546 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 552 "miniOO_MENHIR.ml"
        ) = 
# 58 "miniOO_MENHIR.mly"
                                ()
# 556 "miniOO_MENHIR.ml"
         in
        _menhir_goto_iden _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)) : 'freshtv176)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce11 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 570 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 576 "miniOO_MENHIR.ml"
    ))) = _menhir_stack in
    let _v : (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 581 "miniOO_MENHIR.ml"
    ) = 
# 31 "miniOO_MENHIR.mly"
        ()
# 585 "miniOO_MENHIR.ml"
     in
    _menhir_goto_cmds _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | NULL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | NUM _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | NULL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | NUM _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 634 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState1 | MenhirState44 | MenhirState34 | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 644 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv137 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 654 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | NULL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | NUM _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | PROC_DECL ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv138)
        | GT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv139 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 676 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | NULL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | NUM _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
            | PROC_DECL ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv140)
        | LEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv141 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 698 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | NULL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | NUM _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
            | PROC_DECL ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv142)
        | LT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv143 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 720 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | NULL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | NUM _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
            | PROC_DECL ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv144)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv145 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 744 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)) : 'freshtv148)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv151 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 753 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 757 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv149 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 763 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 767 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 772 "miniOO_MENHIR.ml"
        ))), _, (_3 : (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 776 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 782 "miniOO_MENHIR.ml"
        ) = 
# 45 "miniOO_MENHIR.mly"
                 ()
# 786 "miniOO_MENHIR.ml"
         in
        _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv150)) : 'freshtv152)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 794 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 798 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv153 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 804 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 808 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 813 "miniOO_MENHIR.ml"
        ))), _, (_3 : (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 817 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 823 "miniOO_MENHIR.ml"
        ) = 
# 47 "miniOO_MENHIR.mly"
                  ()
# 827 "miniOO_MENHIR.ml"
         in
        _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)) : 'freshtv156)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv159 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 835 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 839 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv157 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 845 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 849 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 854 "miniOO_MENHIR.ml"
        ))), _, (_3 : (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 858 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 864 "miniOO_MENHIR.ml"
        ) = 
# 46 "miniOO_MENHIR.mly"
                 ()
# 868 "miniOO_MENHIR.ml"
         in
        _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)) : 'freshtv160)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv163 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 876 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 880 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv161 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 886 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 890 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 895 "miniOO_MENHIR.ml"
        ))), _, (_3 : (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 899 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 905 "miniOO_MENHIR.ml"
        ) = 
# 48 "miniOO_MENHIR.mly"
                  ()
# 909 "miniOO_MENHIR.ml"
         in
        _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)) : 'freshtv164)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 917 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 921 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv165 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 927 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 931 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 936 "miniOO_MENHIR.ml"
        ))), _, (_3 : (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 940 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 946 "miniOO_MENHIR.ml"
        ) = 
# 40 "miniOO_MENHIR.mly"
                     ()
# 950 "miniOO_MENHIR.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)) : 'freshtv168)
    | _ ->
        _menhir_fail ()

and _menhir_goto_boolean : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 959 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 969 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | MALLOC ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | SKIP ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | VAR _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | VAR_DECL ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | WHILE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv130)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 995 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | MALLOC ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | SKIP ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | VAR _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | VAR_DECL ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | WHILE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv132)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 1021 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | MALLOC ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | SKIP ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | VAR _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | VAR_DECL ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | WHILE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv134)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv135 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 1047 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | MALLOC ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | SKIP ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | VAR _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | VAR_DECL ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv136)
    | _ ->
        _menhir_fail ()

and _menhir_goto_iden : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1074 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState1 | MenhirState44 | MenhirState40 | MenhirState34 | MenhirState23 | MenhirState21 | MenhirState19 | MenhirState17 | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1084 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1090 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1095 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _v : (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 1100 "miniOO_MENHIR.ml"
        ) = 
# 52 "miniOO_MENHIR.mly"
         ()
# 1104 "miniOO_MENHIR.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv110)) : 'freshtv112)
    | MenhirState0 | MenhirState56 | MenhirState10 | MenhirState25 | MenhirState52 | MenhirState43 | MenhirState48 | MenhirState45 | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1112 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv113 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1122 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | NULL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | NUM _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
            | PROC_DECL ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40) : 'freshtv114)
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv115 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1144 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37) : 'freshtv116)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv117 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1162 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)) : 'freshtv120)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv127 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1171 "miniOO_MENHIR.ml"
        ))) * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1175 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv123 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1185 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1189 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv121 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1196 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1200 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (_1 : (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1205 "miniOO_MENHIR.ml"
            ))), _, (_3 : (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1209 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 1216 "miniOO_MENHIR.ml"
            ) = 
# 38 "miniOO_MENHIR.mly"
                            ()
# 1220 "miniOO_MENHIR.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)) : 'freshtv124)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv125 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1230 "miniOO_MENHIR.ml"
            ))) * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1234 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)) : 'freshtv128)
    | _ ->
        _menhir_fail ()

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1244 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DEREFERENCE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1256 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FIELD _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv104)
    | ASSIGN | ELSE | GEQ | GT | IF | LEQ | LPAREN | LT | MALLOC | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1272 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1277 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _v : (
# 19 "miniOO_MENHIR.mly"
      (unit)
# 1282 "miniOO_MENHIR.ml"
        ) = 
# 61 "miniOO_MENHIR.mly"
          ()
# 1286 "miniOO_MENHIR.ml"
         in
        _menhir_goto_iden_fields _menhir_env _menhir_stack _menhir_s _v) : 'freshtv106)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1296 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)

and _menhir_goto_cmd : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 1304 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 | MenhirState25 | MenhirState35 | MenhirState48 | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 1314 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv91 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 1324 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | MALLOC ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | SKIP ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
            | VAR_DECL ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | WHILE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv92)
        | ELSE | GEQ | GT | IF | LEQ | LT | MALLOC | SKIP | VAR _ | VAR_DECL | WHILE ->
            _menhir_reduce11 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv93 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 1354 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)) : 'freshtv96)
    | MenhirState0 | MenhirState56 | MenhirState52 | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 1363 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv97 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 1373 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | MALLOC ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | SKIP ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | VAR_DECL ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv98)
        | ELSE | GEQ | GT | IF | LEQ | LT | MALLOC | SKIP | VAR _ | VAR_DECL | WHILE ->
            _menhir_reduce11 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv99 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 1403 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)) : 'freshtv102)
    | _ ->
        _menhir_fail ()

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1422 "miniOO_MENHIR.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv83 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1433 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | MALLOC ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | SKIP ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | VAR_DECL ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | WHILE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv84)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv85 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1461 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)) : 'freshtv88)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "miniOO_MENHIR.mly"
       (int)
# 1476 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv81) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 11 "miniOO_MENHIR.mly"
       (int)
# 1486 "miniOO_MENHIR.ml"
    )) : (
# 11 "miniOO_MENHIR.mly"
       (int)
# 1490 "miniOO_MENHIR.ml"
    )) = _v in
    ((let _v : (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 1495 "miniOO_MENHIR.ml"
    ) = 
# 51 "miniOO_MENHIR.mly"
        ()
# 1499 "miniOO_MENHIR.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv82)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv79) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 1513 "miniOO_MENHIR.ml"
    ) = 
# 53 "miniOO_MENHIR.mly"
         ()
# 1517 "miniOO_MENHIR.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv80)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "miniOO_MENHIR.mly"
       (bool)
# 1524 "miniOO_MENHIR.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv77) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 12 "miniOO_MENHIR.mly"
       (bool)
# 1534 "miniOO_MENHIR.ml"
    )) : (
# 12 "miniOO_MENHIR.mly"
       (bool)
# 1538 "miniOO_MENHIR.ml"
    )) = _v in
    ((let _v : (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 1543 "miniOO_MENHIR.ml"
    ) = 
# 44 "miniOO_MENHIR.mly"
         ()
# 1547 "miniOO_MENHIR.ml"
     in
    _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv78)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 1559 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 1568 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state * (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 1577 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 1586 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv45 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 1600 "miniOO_MENHIR.ml"
        )) * _menhir_state * (
# 15 "miniOO_MENHIR.mly"
      (unit)
# 1604 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1613 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1622 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 1631 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state) * _menhir_state * (
# 20 "miniOO_MENHIR.mly"
      (unit)
# 1645 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 1654 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 1663 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 1672 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * (
# 17 "miniOO_MENHIR.mly"
      (unit)
# 1681 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1695 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1704 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1713 "miniOO_MENHIR.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv76)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | NULL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | NUM _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 1760 "miniOO_MENHIR.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv27 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1771 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv25 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1778 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), (_2 : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1783 "miniOO_MENHIR.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 1790 "miniOO_MENHIR.ml"
            ) = 
# 37 "miniOO_MENHIR.mly"
                           ()
# 1794 "miniOO_MENHIR.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)) : 'freshtv28)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv29 * _menhir_state) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1804 "miniOO_MENHIR.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)) : 'freshtv32)
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
# 1819 "miniOO_MENHIR.ml"
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
# 1831 "miniOO_MENHIR.ml"
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
    | ASSIGN | ELSE | GEQ | GT | IF | LEQ | LPAREN | LT | MALLOC | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1847 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1852 "miniOO_MENHIR.ml"
        ))) = _menhir_stack in
        let _v : (
# 18 "miniOO_MENHIR.mly"
      (unit)
# 1857 "miniOO_MENHIR.ml"
        ) = 
# 57 "miniOO_MENHIR.mly"
        ()
# 1861 "miniOO_MENHIR.ml"
         in
        _menhir_goto_iden _menhir_env _menhir_stack _menhir_s _v) : 'freshtv22)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1871 "miniOO_MENHIR.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 1886 "miniOO_MENHIR.ml"
    ) = 
# 41 "miniOO_MENHIR.mly"
         ()
# 1890 "miniOO_MENHIR.ml"
     in
    _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 1912 "miniOO_MENHIR.ml"
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
# 1923 "miniOO_MENHIR.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv3 * _menhir_state)) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1930 "miniOO_MENHIR.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), (_3 : (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1935 "miniOO_MENHIR.ml"
                ))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (
# 16 "miniOO_MENHIR.mly"
      (unit)
# 1943 "miniOO_MENHIR.ml"
                ) = 
# 39 "miniOO_MENHIR.mly"
                             ()
# 1947 "miniOO_MENHIR.ml"
                 in
                _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)) : 'freshtv6)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv7 * _menhir_state)) * (
# 10 "miniOO_MENHIR.mly"
       (string)
# 1957 "miniOO_MENHIR.ml"
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

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | NULL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | NUM _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | PROC_DECL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

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
      (unit)
# 2012 "miniOO_MENHIR.ml"
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
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MALLOC ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SKIP ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | VAR_DECL ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 2051 "miniOO_MENHIR.ml"
