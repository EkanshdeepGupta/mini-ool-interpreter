open AbstractSyntax;;
open Stack;;
open Main;;

(* Implementing basic dictionary functions *)

let rec lookup x l = match l with
  [] -> raise Not_Found
| (k,v)::t -> if k = x then v else lookup x t

let rec add k v d  = match d with
  [] -> [(k,v)]
| (k', v')::t -> if k' = k then (k,v)::t else (k',v'):: (add k v t)


(* Implementing all datatypes to execute programs *)
type object = int

and
type location = 
| Obj of object
| Null 

and
type closure = var * stmtlist * stack

and
type value = 
| Field of string
| Int of int
| Loc of location
| Clo of closure

and
type taintedValue = 
| Val of value
| Error

and 
type environment = (var * location) list
(* Implementing environment as a dictionary. Will use above lookup and add functions to interact. *)
(* Strictly speaking, Env maps var to obj, but using location so that undeclared variables can be mapped to null. Although by static checking no instances of undeclared variables should make it here.*)

and
type frame = 
| Decl of environment
| Call of environment * stack

and
type stack = frame Stack.t

and
type heap = ((object * field) * taintedValue) list
(* Implementing heap as a dictionary. Will use above lookup and add functions to interact. *)

and
type state = stack * heap
(* Not doing control and configurations. Don't see the use. *)


(* ----------------------------- *)

let rec operational_semantics (Stmtlist p) = exec_stmtlist p (Stack.create (), [])

and exec_stmtlist (p: stmtlist ) (s : state) = match p with
  Empty -> ()
| While of boolexp * stmtlist 
| If of boolexp * stmtlist * stmtlist (* 1st stmtlist if boolexp is true, 2nd for `else`. *) 
| Stmt of stmt * stmtlist
| Atom of stmtlist
| Parallel of stmtlist * stmtlist


