(* 12. Decode a run-length encoded list. (medium) *)
(* Given a run-length code list generated as specified in the previous problem,
 construct its uncompressed version.
*)

type 'a rle =
  | One of 'a
  | Many of int * 'a
;;

let rec decode  = function
  | [] -> []
  | One x :: xs -> x :: decode xs
  | Many (count, x) :: xs when count <= 0 -> decode xs
  | Many (count, x) :: xs -> x :: decode (Many (count - 1, x) :: xs)
;;

let input = [Many (4, "a"); One "b"; Many (2, "c"); Many (2, "a"); One "d"; Many (4, "e")] in
let output = ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"] in

assert (decode input = output);
print_endline "Problem 12 - Passed"
