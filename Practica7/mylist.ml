let hd = function
	h::_ -> h |
	[] -> raise (Failure "hd")
	

let tl = function
	_::h -> h |
	[] -> raise (Failure "tl") 
	
let rec lenght = function
	_::h -> lenght h + 1 |
	_::[] -> 1 |
	[] -> 0

	
let rec nth t n =
	if n = 0 && t::_ then t
	else nth _::t (n - 1)

	


