(* Write a function last : 'a list -> 'a option that returns the last element of a list. (easy) *)

let rec last = function
  | [] -> None
  | [x] -> Some x
  | _ :: xs -> last xs
;;

assert (last [1; 2; 3] = Some 3);
assert (last [] = None);
print_endline   "Problem 01 - Passed"
