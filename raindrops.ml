let raindrop _ =
    failwith "'raindrop' is missing"

let raindrop drop =
let result = (
(*The '^' operator concatenates the printed values*)
  (if drop mod 3 = 0 then "Pling" else "") ^
  (if drop mod 5 = 0 then "Plang" else "") ^
  (if drop mod 7 = 0 then "Plong" else "")
  )
  in
  (*if the above if conditions aren't satisfied, return input value as a string*)
  if result = "" then string_of_int drop
  else result
