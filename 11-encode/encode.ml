(* 11. Modified run-length encoding. (easy) *)
(* Modify the result of the previous problem in such a way that if an element has no duplicates 
  it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.  
*)
(* Since OCaml lists are homogeneous, one needs to define a type to hold both single elements and sub-lists. *)

type 'a rle =
| One of 'a
| Many of int * 'a

let encode (xs : 'a list) = 
  let rec encode' (count: int) (x: 'a) (xs: 'a list): 'a rle list =
    let encoding_by_count = if count == 1 then One x else Many (count, x) in

    match xs with
    | [] -> [encoding_by_count]
    | y :: ys ->
       if x = y then encode' (count + 1) y ys
       else encoding_by_count :: encode' 1 y ys
  in
  match xs with
  | [] -> []
  | x :: xs -> encode' 1 x xs
;;

let input = ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"] in
let output = [Many (4, "a"); One "b"; Many (2, "c"); Many (2, "a"); One "d"; Many (4, "e")] in

assert (encode input = output);
assert (encode [] = []);
print_endline "Problem 11 - Passed"
