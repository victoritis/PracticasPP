
let rec sum_cifras n =
if n <= 0 then n
else n mod 10 + sum_cifras (n/10)

let rec num_cifras n =
if n <= 0 then n
else 1 + num_cifras(n/10)

let rec exp10 n =
	if n <= 1 then 1
	else if n = 1 then 1
	else 2 * exp10 (n - 1) 


let reverse n = 
let rec next x n =
if n = 0 then x 
else next (x * 10 + n mod 10) (n / 10) 
in next 0 n

let palindromo s =
let rec aux x y =
if x=String.length s || y<0 then true
else
if s.[x] != s.[y] then false 
else aux (x+1) (y-1)
in aux 0 ((String.length s)-1)
