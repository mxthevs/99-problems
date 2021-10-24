(* 8. Eliminate consecutive duplicates of list elements. (medium) *)

let compress (xs : 'a list) =
  let rec compress' (x : 'a) = function
    | [] -> []
    | y :: ys -> if x = y then compress' y ys else y :: compress' y ys
  in
  match xs with
  | [] -> []
  | x :: xs -> x :: compress' x xs
;;

assert (compress ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"] = ["a"; "b"; "c"; "a"; "d"; "e"]);
assert (compress ["a"; "b"; "c"; "d"; "e"] = ["a"; "b"; "c"; "d"; "e"]);
print_endline "Problem 08 - Passed"
