(* 16. Drop every N'th element from a list. (medium) *)

let drop (xs : 'a list) (n : int) =
  let rec drop' (i : int) = function
    | [] -> []
    | x :: xs ->
      if i = n then drop' 1 xs
      else x :: drop' (i + 1) xs 
  in drop' 1 xs
;;

assert(drop ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"] 3 = ["a"; "b"; "d"; "e"; "g"; "h"; "j"]);
assert(drop [] 3 = []);
print_endline "Problem 16 - Passed"
