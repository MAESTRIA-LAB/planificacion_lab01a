(define (problem DLOG-2-2-2)
	(:domain conductorlog)
	(:objects
	ambulancia1
;	ambulancia2
	paciente1
	paciente2
	l1
	l2
    l3
	l4
	)
	(:init

    (OBJ paciente1)
	(OBJ paciente2)
	(AMBULANCIA ambulancia1)
	(DESOCUPAR ambulancia1)
	(at ambulancia1 l1)
	(at paciente1 l3)
	(at paciente2 l4)
	(LOCALIZACION l1)
	(LOCALIZACION l2)
	(LOCALIZACION l3)
	(LOCALIZACION l4)
;	(path l1 l3)
;	(path l3 l1)
;	(path l1 l4)
;	(path l4 l1)
		
	(link l1 l2)
	(link l2 l1)
	(link l2 l4)
	(link l4 l2)
	(link l3 l4)
	(link l4 l3)

;;
)
	(:goal (and
	(at paciente1 l1)
	(at paciente2 l1)
	))


)
