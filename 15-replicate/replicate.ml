(* 15. Replicate the elements of a list a given number of times. (medium) *)

let rec replicate (xs : 'a list) (n : int) =
  let rec generate (count: int) (x: 'a): 'a list =
    if count <= 0 then []
    else x :: generate (count - 1) x
  in

  match xs with
  | [] -> []
  | x :: xs -> List.concat [generate n x; replicate xs n]
;;

assert (replicate ["a"; "b"; "c"] 3 = ["a"; "a"; "a"; "b"; "b"; "b"; "c"; "c"; "c"]);
print_endline "Problem 15 - Passed"