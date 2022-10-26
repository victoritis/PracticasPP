let rec fib n =
if n <= 1 then n
else fib (n-1) + fib (n-2);;

(* SI QUISIERA CONOCER EL TIEMPO DE EJECUCUION
let crono f x = 
	let t1 = Sys.time () in 
	f x; Sys.time () -. t1
*)

let y = 0

let x = int_of_string(Sys.argv.(1))

let rec bucle y = if y > x then () else (
	print_int(fib y) ; print_endline "" ; bucle(y + 1))


let _ = if Array.length Sys.argv = 2 then bucle y else print_endline " ERROR "



(*	DEBERIA USAR ESTA Y COMENTAR LA DE ARRIBA
let _ = if Array.length Sys.argv = 2 then (print_float(crono bucle y); print_endline " SEGUNDOS EN EJECUTARSE ") else print_endline " ERROR "
*)






