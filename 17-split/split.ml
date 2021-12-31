(* 17. Split a list into two parts; the length of the first part is given. (easy) *)
(* If the length of the first part is longer than the entire list, then the first part
   is the list and the second part is empty.
*)

let split (xs : 'a list) (n : int) =
  let rec split' i acc = function
  | [] -> List.rev acc, []
  | x :: xs as tl ->
    if i = 0 then List.rev acc, tl
    else split' (i - 1) (x :: acc) xs
  in

  split' n [] xs
;;

let input = ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"] in
let output = (["a"; "b"; "c"], ["d"; "e"; "f"; "g"; "h"; "i"; "j"]) in

assert(split input 3 = output);
assert(split ["a"; "b"; "c"; "d"] 5 = (["a"; "b"; "c"; "d"], []));
print_endline "Problem 17 - Passed"
