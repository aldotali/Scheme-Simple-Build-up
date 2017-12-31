(define (deep-remove atom list_l)
	( cond 
	((null? list_l) list_l)
	((list? (car list_l)) ( cons (deep-remove atom (car list_l)) (deep-remove atom (cdr list_l)) ) )
	((not (eq? (car list_l) atom)) (cons (car list_l)(deep-remove atom (cdr list_l))))	
	(else
		(deep-remove atom (cdr list_l)) 
	)
	)
)