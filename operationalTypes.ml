open AbstractSyntax;;
open Stack;;

(* Implementing all datatypes to execute programs *)
type object1 = int

and
location = 
| Obj of object1
| Null 

and
closure = var * stmtlist * stack

and
value = 
| Field of string (* Implementing fields as strings. *)
| Int of int
| Loc of location
| Clo of closure

and
tainted_value = 
| Val of value
| Error

and 
environment = (var * location) list
(* Implementing environment as a dictionary. Will use above lookup and add functions to interact. *)
(* Strictly speaking, Env maps var to obj, but using location so that undeclared variables can be mapped to null.
Although by static checking no instances of undeclared variables should make it here.*)

and
frame =
| Decl of environment
| Call of environment * stack

and
stack = frame Stack.t

and
heap = ((object1 * string) * tainted_value) list (* again using string for fields *)
(* Implementing heap as a dictionary. Will use above lookup and add functions to interact. *)

and
state = stack * heap * int 
(* Using an additional int to allocate new memory in heap *)

(* Not doing control and configurations. Don't see the use. *)