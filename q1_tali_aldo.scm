( define (pair-up lst_k lst_v)
	(cond 
		((null? (cdr lst_k))  (cons (car lst_k) (car lst_v)))
		((null? (cdr lst_v))  (cons (car lst_k) (car lst_v)))
		(else
			(list
				(cons (car lst_k) (car lst_v))
				(pair-up (cdr lst_k) (cdr lst_v))	
			) 
		)
	) 
)