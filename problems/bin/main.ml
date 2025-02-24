let _print_list (xs : string list) = List.iter (fun el -> print_endline ("List el: " ^ el)) xs
(* Problem 1 *)
let rec last (xs : 'a list) : 'a option =
  match xs with [] -> None | [ x ] -> Some x | _ :: rest -> last rest

(* Problem 2 *)
let rec last_two (xs : 'a list) : ('a * 'a) option =
  match xs with
  | [] -> None
  | [ x ] -> None
  | [ x; y ] -> Some (x, y)
  | _ :: rest -> last_two rest

(* Problem 3 *)
let rec at (i : int) (xs : 'a list) : 'a option =
  match xs with
  | [] -> None
  | x :: rest -> if i == 0 then Some x else at (i - 1) rest

(* Problem 4 *)
let rec length (xs : 'a list) : int =
  match xs with [] -> 0 | _ :: rest -> 1 + length rest

(* Problem 5 *)
let rec rev (xs : 'a list) : 'a list =
  let rec aux (acc : 'a list) (list : 'a list) =
    match list with [] -> acc | h :: t -> aux (h :: acc) t
  in
  aux [] xs

(* Problem 6 *)
let rec is_palindrome (xs : string list) : bool =
  _print_list xs;
  match xs with
  | [] -> true
  | h :: t ->
(*  print_endline ("H - " ^ h); *)
  match last_el :: (rev last) with
  | None -> true
  | _ -> if h <> last_el  then false
(*        print_endline ("last - " ^ last_el); *)
        else is_palindrome

let () = print_endline "Hello, World!"
