(define (problem AMBULANCIA-2-2-2)
	(:domain ambulancia-servicio)
	(:objects
		ambulancia1 ambulancia2 paciente1 paciente2 l1 l2 l3 l4
	)
	(:INIT
		(DESOCUPAR ambulancia1)
		(AMBULANCIA ambulancia1)
		(at ambulancia2 l1)
		(DESOCUPAR ambulancia2)
		(AMBULANCIA ambulancia2)
		(at ambulancia1 l1)
		(OBJ paciente1)
		(OBJ paciente2)
		(at paciente1 l3)
		(at paciente2 l4)

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