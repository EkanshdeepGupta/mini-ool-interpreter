# MiniOOL


MiniOOL is a toy programming language which is described at [MiniOOL Syntax And Semantics](MiniOOL-Syntax-And-Semantics.pdf). This project is an implementation of a MiniOOL interpreter as part of the CSCI-GA.3110-001 Honors Programming Languages Course by [Patrick Cousot](https://cs.nyu.edu/~pcousot/) in Fall 2020.  
  
  
# Build
MiniOOL can be built using the included [makefile](makefile). Run `make` to compile the source code.

## Dependencies
- ocamlc >= 4.07.1
- ocamllex >= 4.07.1
- menhir >= 20201216

# Examples

Find example source code in [./examples](examples). Try the interpreter on the following examples demonstrating the syntax and functionality of MiniOOL.

### 1: Basic Syntax  
  


[basic_1.oo](examples/basic_1.oo)
```
var x;
var y;
y = proc z: ;
print(y);
y(4);
x = 2;
y = 5;
print(x);
print(y);
```
  

Output:
```
~> ./main ./examples/basic_1.oo

ABSTRACT SYNTAX TREE:
Stmtlist: (
        Declare: x
        Stmtlist: (
                Declare: y
                Stmtlist: (
                        Assign: (Var y := Proc: (z, ))
                        Stmtlist: (
                                Print: Iden: (Var y)
                                Stmtlist: (
                                        Call: ((Var y), Argument: Num 4)
                                        Stmtlist: (
                                                Assign: (Var x := Num 2)
                                                Stmtlist: (
                                                        Assign: (Var y := Num 5)
                                                        Stmtlist: (
                                                                Print: Iden: (Var x)
                                                                Stmtlist: (
                                                                        Print: Iden: (Var y)

                                                                )
                                                        )
                                                )
                                        )
                                )
                        )
                )
        )
)



PROGRAM OUTPUT (print statements):
Iden: (Var y)    :       Val Clo: (z, , [ (Decl - Env: [ (y, Obj 1) ]),
(Decl - Env: [ (x, Obj 0) ]) ])
Iden: (Var x)    :       Val Int 2
Iden: (Var y)    :       Val Int 5



FINAL STATE:
Printing State: 
Stack: [ ]

Heap: [ ((0, val), Val Int 2),
((1, val), Val Int 5),
((2, val), Val Int 4) ]

Address: 3
```
  
  
### 2: Function definition
  
  
[basic_2.oo](examples/basic_2.oo)
```
var p;
p = proc y: print(y); if (y < 1) p = 21; else p(y - 1);;;
print(p);
p(1);
print(p);
```
  

Output:
```
~> ./main ./examples/basic_2.oo

ABSTRACT SYNTAX TREE:
Stmtlist: (
        Declare: p
        Stmtlist: (
                Assign: (Var p := Proc: (y, Stmtlist: (
                        Print: Iden: (Var y)
                        Stmtlist: (
                                If: (Expression: (Iden: (Var y), Lt, Num 1), Then: Stmtlist: (
                                        Assign: (Var p := Num 21)

                                ), Else: Stmtlist: (
                                        Call: ((Var p), Argument: Arith: (Iden: (Var y), Minus, Num 1))

                                ))

                        )
                )))
                Stmtlist: (
                        Print: Iden: (Var p)
                        Stmtlist: (
                                Call: ((Var p), Argument: Num 1)
                                Stmtlist: (
                                        Print: Iden: (Var p)

                                )
                        )
                )
        )
)



PROGRAM OUTPUT (print statements):
Iden: (Var p)    :       Val Clo: (y, Stmtlist: (
        Print: Iden: (Var y)
        Stmtlist: (
                If: (Expression: (Iden: (Var y), Lt, Num 1), Then: Stmtlist: (
                        Assign: (Var p := Num 21)

                ), Else: Stmtlist: (
                        Call: ((Var p), Argument: Arith: (Iden: (Var y), Minus, Num 1))

                ))

        )
), [ (Decl - Env: [ (p, Obj 0) ]) ])
Iden: (Var y)    :       Val Int 1
Iden: (Var y)    :       Val Int 0
Iden: (Var p)    :       Val Int 21



FINAL STATE:
Printing State: 
Stack: [ ]

Heap: [ ((0, val), Val Int 21),
((1, val), Val Int 1),
((2, val), Val Int 0) ]

Address: 3

```
  

### 3: Recursive Factorial
  

[factorial.oo](examples/factorial.oo)
```
var r;
r = 1;
var fact;
fact = proc n: 
    if (n == 0)
        skip;
    else
        r = r * n;
        fact(n-1);
    ;
;

fact(6);
print(r);
```
  

Output:
```
~> ./main ./examples/factorial.oo 

ABSTRACT SYNTAX TREE:
Stmtlist: (
        Declare: r
        Stmtlist: (
                Assign: (Var r := Num 1)
                Stmtlist: (
                        Declare: fact
                        Stmtlist: (
                                Assign: (Var fact := Proc: (n, Stmtlist: (
                                        If: (Expression: (Iden: (Var n), Eq, Num 0), Then: Stmtlist: (
                                                Skip. 

                                        ), Else: Stmtlist: (
                                                Assign: (Var r := Arith: (Iden: (Var r), Times, Iden: (Var n)))
                                                Stmtlist: (
                                                        Call: ((Var fact), Argument: Arith: (Iden: (Var n), Minus, Num 1))

                                                )
                                        ))

                                )))
                                Stmtlist: (
                                        Call: ((Var fact), Argument: Num 6)
                                        Stmtlist: (
                                                Print: Iden: (Var r)

                                        )
                                )
                        )
                )
        )
)



PROGRAM OUTPUT (print statements):
Iden: (Var r)    :       Val Int 720



FINAL STATE:
Printing State: 
Stack: [ ]

Heap: [ ((0, val), Val Int 720),
((1, val), Val Clo: (n, Stmtlist: (
        If: (Expression: (Iden: (Var n), Eq, Num 0), Then: Stmtlist: (
                Skip. 

        ), Else: Stmtlist: (
                Assign: (Var r := Arith: (Iden: (Var r), Times, Iden: (Var n)))
                Stmtlist: (
                        Call: ((Var fact), Argument: Arith: (Iden: (Var n), Minus, Num 1))

                )
        ))

), [ ])),
((2, val), Val Int 6),
((3, val), Val Int 5),
((4, val), Val Int 4),
((5, val), Val Int 3),
((6, val), Val Int 2),
((7, val), Val Int 1),
((8, val), Val Int 0) ]

Address: 9
```
  
  
### Other examples:
  
- Fibonacci recursive vs Fibonacci iterated:
`./main ./examples/fibonacci_recursive.oo` vs `./main ./examples/fibonacci_iterated.oo`
