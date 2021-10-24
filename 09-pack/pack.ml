(* 9. Pack consecutive duplicates of list elements into sublists. (medium) *)

let pack list =
  let rec pack' current acc = function
    | [] -> []
    | [x] -> (x :: current) :: acc
    | a :: (b :: _ as ys) ->
       if a = b then pack' (a :: current) acc ys
       else pack' [] ((a :: current) :: acc) ys
  in List.rev (pack' [] [] list)
;;

let input = ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "d"; "e"; "e"; "e"; "e"] in
let output = [["a"; "a"; "a"; "a"]; ["b"]; ["c"; "c"]; ["a"; "a"]; ["d"; "d"]; ["e"; "e"; "e"; "e"]] in

assert (pack input = output);
assert (pack [] = []);
print_endline "Problem 09 - Passed"
