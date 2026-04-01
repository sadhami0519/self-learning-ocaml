(* Leap Year Program *)

(* The C++ equivalent of this would be a function with 'return -1'*)

let leap_year _ =
    failwith "'leap_year' is missing"

let leap_year year =
(*'if - then - else' format*)
  if year mod 400 = 0 then true
  else if year mod 100 = 0 then false
  else if year mod 4 = 0 then true
  else false
