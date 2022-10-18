
let rec power x y = 
	if y = 0 then 1
	else x * power x (y - 1)



let rec power' x y =
	if y = 0 then 1
	else if (y mod 2) = 0 then power' (x * x) (y/2)
	else x * power' (x * x) (y/2)


(*
La función power' debido a su recursividad  realiza menos calculos .
Gracias a la funcion para saber el tiempo de ejecucion vemos que en numeros grandes se nota mucho mas la diferencia con prime.
 *)


(*
No hace falta pasar y a float ya que no incurre en las operaciones con flotantes
*)
let rec powerf x y = 
    if y = 0 then 1. 
    else if (y mod 2 = 0) then powerf (x*.x) (y/2)
    else x *. powerf (x*.x) (y/2)
    
