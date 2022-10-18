if false then (2 / 0 > 0)  else false;;
(*- : bool = false*)


if true then (2 / 0 > 0) else false;;
(*Exception: Division_by_zero.*)


if true then true else (2 / 0 > 0);;
(*- : bool = true*)


if false then true else (2 / 0 > 0);;
(*Exception: Division_by_zero.*)


let con b1 b2 = if b1 then b2 else false;;
(*val con : bool -> bool -> bool = <fun>*)


let dis b1 b2 = if b1 then true else b2;;
(*val dis : bool -> bool -> bool = <fun>*)


con (1 < 0) (2 / 0 > 0);;     		 (*Se evaluan primero los dos argumentos por eso falla la ejecucucion*)
(*Exception: Division_by_zero.*)


(1 < 0) && (2 / 0 > 0);;
(*- : bool = false*)


dis (1 > 0) (2 / 0 > 0);;		(*Se evaluan primero los dos argumentos por eso falla la ejecucucion*)
(*Exception: Division_by_zero.*)


(1 > 0) || (2 / 0 > 0);;
(*- : bool = true*)















