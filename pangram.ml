(* Define a function that takes a string s and returns true or false *)
let is_pangram s =

  (* Create an array of 26 zeros, one slot for each letter a to z *)
  let freq = Array.make 26 0 in

  (* Walk through every character c in the string one by one *)
  String.iter (fun c ->

    (* Convert the character to lowercase so A and a are treated the same *)
    let c = Char.lowercase_ascii c in

    (* Only process it if it is actually a letter between a and z *)
    if c >= 'a' && c <= 'z' then

      (* Mark that letter as seen by setting its slot in freq to 1 *)
      (* Char.code c gives the ASCII number of c *)
      (* Char.code 'a' is 97, so this gives us a number from 0 to 25 *)
      (* <- is how you assign a value to an array slot in OCaml *)
      freq.(Char.code c - Char.code 'a') <- 1

  ) s; (* the ) s closes String.iter and tells it to run on string s *)

  (* Check if every slot in freq is 1 *)
  (* If any slot is still 0, that letter was never seen, so it is not a pangram *)
  Array.for_all (fun x -> x = 1) freq
