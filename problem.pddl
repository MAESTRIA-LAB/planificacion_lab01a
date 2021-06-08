(define (problem AMBULANCIA-2-2-2)
	(:domain ambulancia-servicio)
	(:objects
		ambulancia1 paciente1 paciente2 l1 l2 l3 l4 hospital1
	)
	(:INIT
		(HOSPITAL hospital1)
		(AMBULANCIA ambulancia1)
		(DESOCUPAR ambulancia1)
		
		(at ambulancia1 l1)
		(OBJ paciente1)
		(OBJ paciente2)
		(at paciente1 l4)
		(at paciente2 l3)
		(in hospital1 l1)
		
		(LOCALIZACION l1)
		(LOCALIZACION l2)
		(LOCALIZACION l3)
		(LOCALIZACION l4)
		(link l1 l2)
		(link l2 l1)
		(link l2 l4)
		(link l4 l2)
		(link l3 l4)
		(link l4 l3)
	)
	(:goal
		(and
			(at paciente1 l1)
			(at paciente2 l1)
		)
	)
)