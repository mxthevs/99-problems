(* 7. Flatten a nested list structure. (medium) *)
(* 
  There is no nested list type in OCaml, so we need to define one
  first. A node of a nested list is either an element, or a list of
  nodes.
*)

type 'a node =
  | One of 'a 
  | Many of 'a node list
;;

let flatten (xs : 'a node list): 'a list =
  let rec flatten' = function
    | One x -> [x]
    | Many xs -> 
      xs 
      |> List.map flatten'
      |> List.concat
  in flatten' (Many xs)
;;

assert(flatten [One "a"; Many [One "b"; Many [One "c"; One "d"]; One "e"]] = ["a"; "b"; "c"; "d"; "e"]);
print_endline "Problem 07 - Passed"
