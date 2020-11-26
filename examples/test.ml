let rec string_of_stack stk = let my_string = (Stack.fold string_of_stack_fold "[ " stk) in (String.sub my_string 0 ((String.length my_string) - 2))  ^ " ]"
(* Take substring to remove last `,` at the end. *)

and
string_of_stack_fold s elem = s ^ (string_of_stack_elem elem) ^ ", "

and
string_of_stack_elem elem = string_of_int elem