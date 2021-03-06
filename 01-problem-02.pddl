(define (problem VARIANTE_O2DOM)
	(:domain ambulancia-sin-hospital01)
	(:objects
		 ambulancia1 paciente1 paciente2 l1 l2 l3 l4 
	)
	(:INIT
		(AMBULANCIA ambulancia1)
		(ubicado ambulancia1 l2)
		(PACIENTE paciente1)
		(PACIENTE paciente2)
		(ubicado paciente1 l4)
		(ubicado paciente2 l3)
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


		(conectado l4 l2)
		(conectado l2 l4)
		(conectado l2 l4)
		(conectado l2 l1)
		(conectado l1 l2)
		(conectado l1 l3)
		(conectado l3 l1)
	)
	(:goal
		(and
			(ubicado paciente1 l2)
			(ubicado paciente2 l2)
		)
	)
)