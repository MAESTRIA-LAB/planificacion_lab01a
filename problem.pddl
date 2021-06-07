(define (problem DLOG-2-2-2)
	(:domain conductorlog)
	(:objects
	conductor1
	conductor2
	ambulancia1
	ambulancia2
	paciente1
	paciente2
	l1
	l2
    l3
	l4
	s2
	p1-0
	p1-2
	)
	(:init
	(conductor conductor1)
	(conductor conductor2)

	
	(at ambulancia1 l1)
	(DESOCUPAR ambulancia1)
	(AMBULANCIA ambulancia1)
	(at ambulancia2 l1)
	(DESOCUPAR ambulancia2)
	(AMBULANCIA ambulancia2)
	
	(OBJ paciente1)
	(OBJ paciente2)
	(at paciente1 l3)
	(at paciente2 l4)
	
	(LOCALIZACION l1)
	(LOCALIZACION l2)
	(LOCALIZACION l3)
	(LOCALIZACION l4)

	(LOCALIZACION s2)
	(LOCALIZACION p1-0)
	(LOCALIZACION p1-2)
	
	(at conductor1  p1-0)
	
	(at conductor2  p1-0)
	
	
	(path l2 p1-0)
	(path l2 p1-2)
	
	
	(path p1-0 l2)
	(path p1-0 l1)
    (path l1 p1-0)
	(path p1-2 l2)
	(path s2 p1-2)
	(path p1-2 s2)
	
	(link l1 l2)
	(link l2 l1)
	(link l1 s2)
	(link s2 l1)
	(link s2 l2)
	(link l2 s2)
	
	(link l2 l4)
	(link l4 l2)
	(link l3 l4)
	(link l4 l3)

;;
)
	(:goal (and
;	(at conductor1 l2)
;	(at ambulancia1 l2)
	(at paciente1 l1)
	(at paciente2 l1)
	))


)
