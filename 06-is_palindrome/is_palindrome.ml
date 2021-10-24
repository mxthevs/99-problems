(*6. Find out whether a list is a palindrome. (easy) *)
(* HINT: a palindrome is its own reverse. *)

let is_palindrome (xs : 'a list) = 
  xs = List.rev xs
;;

assert (is_palindrome ["h"; "a"; "n"; "n"; "a"; "h"] = true);
assert (is_palindrome ["a"; "b"; "c"] = false);
print_endline "Problem 06 - Passed"
