(* 2. Find the last but one (last and penultimate) elements of a list. (easy) *)

let rec last_two = function
  | []
  | [_] -> None
  | [x; y] -> Some (x, y)
  |  _ :: xs -> last_two xs 
;;

assert(last_two [1; 2; 3; 4; 5] = Some (4, 5));
assert(last_two [] = None);
print_endline "Problem 02 - Passed"