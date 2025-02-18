(* let rec factorial n =
  if n = 0 then 1
  else n * factorial (n - 1)

let () =
let result = factorial 5 in  
  print_int result;            
  print_newline () 

(* Tail-recursive factorial function *)
let factorial_tail n =
  let rec helper n acc =
    if n <= 1 then acc
    else helper (n - 1) (n * acc)  
  in
  helper n 1  


let () =
  let num = 5 in
  let result = factorial_tail num in
  Printf.printf "Factorial of %d is %d\n" num result *)


(* Sum of numbers from 1 to n using a for loop
let sum_of_numbers n =
  let sum = ref 0 in  (* Using a reference for mutable state *)
  for i = 1 to n do
    sum := !sum + i
  done;
  !sum  (* Dereferencing the mutable reference to get the result *)

let () =
  let result = sum_of_numbers 5 in
  Printf.printf "Sum of numbers from 1 to 5 is: %d\n" result *)

(* Sum of numbers from n down to 1 using a descending for loop *)(* 
let sum_down_from n =
  let sum = ref 0 in
  for i = n downto 1 do  (* Iterates from n down to 1 *)
    sum := !sum + i
  done;
  !sum  (* Dereference the reference to get the result *)

(* Test the function *)
let () =
  let result = sum_down_from 5 in
  Printf.printf "Sum of numbers from 5 down to 1 is: %d\n" result *)

  let sum_while n =
    let sum = ref 0 in
    let i = ref 1 in
    while !i <= n do
      sum := !sum + !i;  
      i := !i + 1  (* Increment i *)
    done;
    !sum  
  
  let () =
    let result = sum_while 5 in
    Printf.printf "Sum of numbers from 1 to 5 is: %d\n" result
  