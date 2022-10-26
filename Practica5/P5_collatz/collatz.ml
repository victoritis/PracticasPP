(* VICTOR GONZALEZ DEL CAMPO 
PRACTICA 5
*)

let f n = 
	if n mod 2 = 0 then n / 2
	else 3 * n + 1

let rec orbit n = 
	if n = 1 then "1"
	else string_of_int n ^ ", " ^ orbit(f n)
	


let rec lenght n =
	if n = 1 then 0
	else lenght(f n) + 1


let rec top n = 
	if n = 1 then 1
	else max n (top (f n))
	

let rec length'n'top n =
	if n = 1 then 0, 1
	else let x, y = length'n'top (f n) in 
	x + 1, max n y  
	
	
let rec longest_in n m =
	if n = m then n, lenght n
	else 
	let x, y = longest_in (n + 1) m in
	let lenght_n = lenght n in
	if lenght_n >= y then n, lenght_n
		else x, y
	

let rec highest_in n m =
	if n = m then n, top n
	else 
	let x, y = highest_in (n + 1) m in
	let highest_n = top n in
	if highest_n >= y then n, highest_n
		else x, y


