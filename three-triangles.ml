let is_equilateral _ _ _ =
    failwith "'is_equilateral' is missing"
let is_isosceles _ _ _ =
    failwith "'is_isosceles' is missing"
let is_scalene _ _ _ =
    failwith "'is_scalene' is missing" 

(*checks validity of inputs - whether three sides exist & whether the sum of two sides are greater than the third*)
let is_valid a b c =
    a > 0 && b > 0 && c > 0 &&
    a + b > c &&
    b + c > a &&
    a + c > b

(*equilateral vs isoceles vs scalene*)
let is_equilateral a b c =
is_valid a b c && a = b && b = c 
let is_isosceles a b c =
is_valid a b c && (a = b || b = c || a = c)
let is_scalene a b c =
is_valid a b c && a <> b && b <> c && a <> c
