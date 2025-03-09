let _print_list (xs : string list) =
  List.iter (fun el -> print_endline ("List el: " ^ el)) xs

(* (* Problem 1 *) *)
(* let rec last (xs : 'a list) : 'a option = *)
(*  match xs with [] -> None | [ x ] -> Some x | _ :: rest -> last rest *)
(*  *)
(* (* Problem 2 *) *)
(* let rec last_two (xs : 'a list) : ('a * 'a) option = *)
(*  match xs with *)
(*  | [] -> None *)
(*  | [ x ] -> None *)
(*  | [ x; y ] -> Some (x, y) *)
(*  | _ :: rest -> last_two rest *)
(*  *)
(* (* Problem 3 *) *)
(* let rec at (i : int) (xs : 'a list) : 'a option = *)
(*  match xs with *)
(*  | [] -> None *)
(*  | x :: rest -> if i == 0 then Some x else at (i - 1) rest *)
(*  *)
(* (* Problem 4 *) *)
(* let rec length (xs : 'a list) : int = *)
(*  match xs with [] -> 0 | _ :: rest -> 1 + length rest *)
(*  *)
(* (* Problem 5 *) *)
(* let rec rev (xs : 'a list) : 'a list = *)
(*  let rec aux (acc : 'a list) (list : 'a list) = *)
(*    match list with [] -> acc | h :: t -> aux (h :: acc) t *)
(*  in *)
(*  aux [] xs *)
(*  *)
(* (* Problem 6 *) *)
(* let rec is_palindrome (xs : string list) : bool = *)
(*  _print_list xs; *)
(*  match xs with *)
(*  | [] -> true *)
(*  | h :: t -> *)
(* (*  print_endline ("H - " ^ h); *) *)
(*  match last_el :: (rev last) with *)
(*  | None -> true *)
(*  | _ -> if h <> last_el  then false *)
(* (*        print_endline ("last - " ^ last_el); *) *)
(*        else is_palindrome *)

(* Duplicate the Elements of a List *)
(* let rec duplicate : 'a list -> 'b list = function *)
(*  | [] -> [] *)
(*  | h :: t -> h :: h :: duplicate t *)
(* duplicate [ "a"; "b"; "c"; "c"; "d" ] *)

(* Split a List Into Two Parts; The Length of the First Part Is Given *)
let split:  (xs: 'a list, i: int) -> string list * string list =
let rec aux = function |
(*Comma is creating tuple*)
| [] -> List.rev acc, []
| h::t as l -> if i == 0 then List.rev acc, 1
else aux (i - 1)(h)
let first = aux xs i in



(* # split ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"] 3;; *)
(* - : string list * string list = *)
(* (["a"; "b"; "c"], ["d"; "e"; "f"; "g"; "h"; "i"; "j"]) *)
(* # split ["a"; "b"; "c"; "d"] 5;; *)
(* - : string list * string list = (["a"; "b"; "c"; "d"], []) *)
let () = print_endline
