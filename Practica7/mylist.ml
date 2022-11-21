










let hd = function
	h::_ -> h |
	[] -> raise (Failure "hd")
	

let tl = function
	_::h -> h |
	[] -> raise (Failure "tl") 
	
let rec length = function
	_::h -> length h + 1 |
	[] -> 0

	
(*Segunda opcion pero definida mas facil
let rec segunda_opcion_lenght l =
if l=[] then 0
else segunda_opcion_lenght (tl l) + 1*)
	


(*Se puede hacer con 2 lenght pero mejor así:*)      
let rec compare_lengths l m = match l,m with
	[],[] -> 0 |
	_::t, _::f -> compare_lengths t f |
	[],_ -> -1 |
	_,[] -> 1


let rec nth list n = match n,list with 
	n,_ when n < 0 -> raise (Invalid_argument "nth") 
	| _,[] -> raise (Invalid_argument "nth")
	| 0,h::_ -> h
	| n,_::t -> nth t (n - 1)
	
(*let rec nth list n =  
      if (n<0) then raise (Invalid_argument "nth")
      else if (list = []) then raise (Invalid_argument "nth")
      else if n=0 then hd list
      else nth (tl list)  (n - 1)  *)


let rec append l1 l2 = match l1,l2 with
	[],_ -> l2
	| _,[] -> l1
	| h::t,_ -> h::append t l2
(*
append [1;2] [3] = 1::append [2] [3]
1::append [2] [3] 1::(2::append [] [3])
1::(2::[3])*)


let rec find f = function
     [] -> raise (Not_found)
     | h::t -> if f h then h else find f t


	
let rec for_all f = function
	[] -> true
	| h::t -> f h && for_all f t
	
	
let rec exists f = function
	[] -> false
	| h::t -> f h || exists f t
	

let rec mem p = function
    [] -> false
    | h::t -> if (p = h) then true
			else (mem p t);;



let rec filter p = function
    [] -> []
    | h::t -> if (p h) then h::(filter p t)
			else (filter p t);;


let find_all = filter;;



let rec partition p = function
    [] -> ([],[])
    | h::t -> let (si,no) = partition p t
			in if (p h) then (h::si,no)
				else (si,h::no);;


let rec split = function
    [] -> ([],[])
    | (h1,h2)::t -> let t1,t2 = split t in
		h1::t1,h2::t2;;


let rec combine l1 l2 =
    match (l1,l2) with
        [], [] -> []
        | h1::t1, h2::t2 -> (h1,h2) :: (combine (t1) (t2))
        | _ -> raise (Invalid_argument "combine");;



let rec rev = function
    [] -> []
    | h::t -> append (rev t) [h];;


let init n f= 
    if n<0 then raise (Invalid_argument "init")
    else let rec aux acc i=
        if i=n then rev acc
        else aux (f i::acc) (i+1)
    in aux[] 0;;


let rev_append l1 l2 =
    if l1=[] then []
    else append (rev l1) l2;;


let rec concat = function
    [] -> []
    | h::t -> append h (concat t);;


let flatten = concat;;


let rec map f = function
    [] -> []
    | h::t -> (f h) :: (map f t);;


let rev_map f l = rev (map f l);;


let rec map2 f l1 l2 =
    if (length l1 != length l2)
        then raise (Invalid_argument"map2")
    else if (length l1 == 0) then []
    else (f(hd l1)(hd l2))::map2 f (tl l1)(tl l2);;


let rec fold_left f a = function
    [] -> a
    | h::t -> fold_left f (f a h) t;;


let rec fold_right f l a =
    match l with
        [] -> a
        | h::t -> f h (fold_right f t a);;






















