(define (problem AMBULANCIA-2-2-2)
	(:domain ambulancia-servicio)
	(:objects
		hospital1 ambulancia1 paciente1 paciente2 l1 l2 l3 l4 
	)
	(:INIT
		(HOSPITAL hospital1)
		(AMBULANCIA ambulancia1)
		(ubicado ambulancia1 l1)
		(not (CARGAR ambulancia1))
		(PACIENTE paciente1)
		(PACIENTE paciente2)
		(not(en paciente1 hospital1))
		(not(en paciente2 hospital1))
		(ubicado paciente1 l4)
		(ubicado paciente2 l3)
		(ubicado hospital1 l1)
		(en ambulancia1 hospital1)	
		(LOCALIZACION l1)
		(LOCALIZACION l2)
		(LOCALIZACION l3)
		(LOCALIZACION l4)
		(conectado l1 l2)
		(conectado l2 l1)
		(conectado l2 l4)
		(conectado l4 l2)
		(conectado l3 l4)
		(conectado l4 l3)
	)
	(:goal
		(and
			(ubicado paciente1 l1)
			(ubicado paciente2 l1)
		)
	)
)