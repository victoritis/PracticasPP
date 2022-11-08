	
let mulmod x y m =
	((x mod m) * (y mod m)) mod m


let rec power' x y m =
	if y = 0 then 1
	else if (y mod 2) = 0 then power' (mulmod x x m) (y/2) m
	else mulmod x (power' (mulmod x x m) (y/2) m) m
	
			
let powmod m b e = power' b e m




