let is_pangram _ =
    failwith "'is_pangram' is missing"

let is_pangram pang =

(*Making a 'freq' array with 26 spaces and initialize 0 in all of them*)
  let freq = Array.make 26 0 in

  (*Iterate through a string and like 'int i' in common loops, there's char 'c'*)
  String.iter (fun c ->

  (*Converting c into lowercase ascii before 'if' condition checking*)
    let c = Char.lowercase_ascii c in
    if c >= 'a' && c <= 'z' then

    (*ASCII value checking and incrementing o to 1 with '<-'*)
      freq.(Char.code c - Char.code 'a') <- 1
    ) pang; (*And finally, perform this all on the 'pang' string*)

  (*Check if all elements in 'freq' are 1 with 'x' iterable*)
  Array.for_all (fun x -> x = 1) freq
