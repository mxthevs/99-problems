(* 5. Reverse a list. (easy) *)
(* OCaml standard library has List.rev but we ask that you reimplement it. *)

let rev (xs : 'a list) =
  let rec rev' (acc : 'a list) = function
    | [] -> acc 
    | x :: xs -> rev' (x :: acc) xs
  in rev' [] xs
;;

assert (rev [1; 2; 3] = [3; 2; 1]);
print_endline "Problem 05 - Passed"