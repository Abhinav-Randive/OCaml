(* let check_number x = 
  if x > 0 then
    "Positive"
  else if x < 0 then
    "Negative"
  else
    "Zero"
;;

let () =
  let result = check_number 4 in
  print_endline result
;; *)
(* 
let classify_character c =
  if c >= 'a' && c <= 'z' then
    "Lowercase letter"
  else if c >= 'A' && c <= 'Z' then
    "Uppercase letter"
  else if c >= '0' && c <= '9' then
    "Digit"
  else
    "Special character"
;;

let () =
  let result = classify_character 'A' in
  print_endline result
;; *)
(* 
let age_category age =
  match age with
  | _ when age < 0 -> "Invalid age"
  | _ when age <= 12 -> "Child"
  | _ when age <= 19 -> "Teenager"
  | _ when age <= 64 -> "Adult"
  | _ -> "Senior"
;;
let () =
  let result = age_category 25 in
  print_endline result
;; *)


(* let is_leap_year year =
  if (year mod 4 = 0 && year mod 100 <> 0) || (year mod 400 = 0) then
    true
  else
    false
;; *)

let is_leap_year year =
  match year mod 4, year mod 100, year mod 400 with
  | 0, 0, 0 -> true
  | 0, 0, _ -> false
  | 0, _, _ -> true
  | _ -> false
;;

let () =
  let result = is_leap_year 2024 in
  print_endline (string_of_bool result)
;;
