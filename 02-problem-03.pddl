(define (problem VARIANTE2_O3DOM)
	(:domain ambulancia-servicio-hospital)
	(:objects
		hospital1 ambulancia1 paciente1 paciente2 l1 l2 l3 l4 l5 l6 l7
	)
	(:INIT
		(HOSPITAL hospital1)
		(AMBULANCIA ambulancia1)
		(PACIENTE paciente1)
		(PACIENTE paciente2)

		(en ambulancia1 hospital1)
		(ubicado paciente1 l6)
		(ubicado paciente2 l4)

		(ubicado hospital1 l5)
		(ubicado ambulancia1 l5)

		(LOCALIZACION l1)
		(LOCALIZACION l2)
		(LOCALIZACION l3)
		(LOCALIZACION l4)
		(LOCALIZACION l5)
		(LOCALIZACION l6)
		(LOCALIZACION l7)

		(conectado l5 l2)
		(conectado l2 l5)
		(conectado l2 l1)
		(conectado l1 l2)
		(conectado l1 l3)
		(conectado l3 l1)
		(conectado l3 l4)
		(conectado l4 l3)
		(conectado l4 l7)
		(conectado l7 l4)
		(conectado l7 l6)
		(conectado l6 l7)
		(conectado l5 l6)
	)
	(:goal
		(and
			(en paciente1 hospital1)
			(en paciente2 hospital1)
		)
	)
)