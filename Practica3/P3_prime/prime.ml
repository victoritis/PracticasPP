let is_prime n =
	let rec check_from i =
	i >= n ||
	(n mod i <> 0 && check_from (i+1))
    in check_from 2;;


let rec next_prime n = if is_prime (n + 1) = true then n + 1 else next_prime (n + 1)
    

let rec last_prime_to n = if is_prime n = true then n else last_prime_to (n - 1)




let rec is_prime2_aux i n = i > n || (n mod i <> 0 && is_prime2_aux (i + 1) n) 

let is_prime2 n = is_prime2_aux 2 n
    
    
    
    
  
  
  
  
  
  
  
  
