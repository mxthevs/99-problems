(* 10. Run-length encoding of a list. (easy)  *)
(* If you need so, refresh your memory about "run-length encoding"¹.  *)
(* ¹ https://en.wikipedia.org/wiki/Run-length_encoding *)

let encode (xs : 'a list) = 
  let rec encode' (count : int) (x: 'a) = function
    | [] -> [(count, x)]
    | y :: ys ->
      if x = y then encode' (count + 1) y ys
      else (count, x) :: encode' 1 y ys
  in
  match xs with
  | [] -> []
  | x :: xs -> encode' 1 x xs
;;

let input = ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"] in
let output = [(4, "a"); (1, "b"); (2, "c"); (2, "a"); (1, "d"); (4, "e")] in

assert (encode input = output);
assert (encode [] = []);
print_endline "Problem 10 - Passed"
