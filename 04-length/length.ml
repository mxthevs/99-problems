(* 4. Find the number of elements of a list. (easy) *)
(* OCaml standard library has List.length but we ask that you reimplement it. Bonus for a tail recursive solution. *)

let length (xs : 'a list) = 
  let rec length' (acc : int) = function
    | [] -> acc
    | x :: rest -> length' (acc + 1) rest 
  in length' 0 xs
;;

assert (length [1; 2; 3; 4; 5] = 5);
assert (length [] = 0);
print_endline   "Problem 04 - Passed"