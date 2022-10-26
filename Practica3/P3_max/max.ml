let max = function x -> 
	  function y -> 
	  	if x >= y then x else y;;


let max x = function y ->
		if x>= y then x else y;;


let max x y = if x >= y then x else y;;


let first (x,y) = x;;


let rec fact n =
	if n = 0 then 1
	else n * fact (n-1);;
	
	
	
