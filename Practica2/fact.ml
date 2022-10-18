(* Ejercicios Practica2 // Ejercicio Extra *)

let rec fact = function 0 -> 1 | n -> n * fact (n - 1)
let x = int_of_string(Sys.argv.(1))

let _ = if Array.length Sys.argv = 2 then print_int(fact x) else print_endline " ERROR "

let _ = print_endline " "







