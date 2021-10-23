(*3. Find the K'th element of a list. (easy)  *)
(* REMARK: OCaml has List.nth which numbers elements from 0 and raises an exception if the index is out of bounds. *)
(*
  # List.nth ["a"; "b"; "c"; "d"; "e"] 2;;
  - : string = "c"
  # List.nth ["a"] 2;;
  Exception: Failure "nth".
*)

let rec at (k : int) = function
  | [] -> None
  | x :: ys -> if k = 1 then Some x else at (k - 1) ys
;;

assert (at 3 [1; 2; 3; 4; 5] = Some 3);
assert (at 4 [1; 2; 3] = None);
print_endline   "Problem 03 - Passed"