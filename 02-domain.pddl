(define (domain ambulancia-servicio-hospital)
	(:requirements :strips)
	(:predicates
		(PACIENTE ?paciente)
		(AMBULANCIA ?ambulancia)
		(LOCALIZACION ?loc)
		(ubicado ?paciente ?loc)
		(en ?obj1 ?obj2)
		(conduciendo ?v)
		(conectado ?x ?y)
		(ocupado ?p)
		(HOSPITAL ?h)
	)

	(:action SUBIR-AMBULANCIA
		:parameters (?ambulancia ?paciente ?loc ?hospital)
		:precondition (and
			(PACIENTE ?paciente)
			(AMBULANCIA ?ambulancia)
			(LOCALIZACION ?loc)
			(HOSPITAL ?hospital)
			(ubicado ?ambulancia ?loc)
			(ubicado ?paciente ?loc)
			(ocupado ?paciente)
		)
		:effect (and 
			(not (ubicado ?paciente ?loc)) 
			(en ?paciente ?ambulancia)
			(en ?ambulancia ?hospital)
		)
	)

	(:action BAJAR-AMBULANCIA
		:parameters (?ambulancia ?paciente ?loc ?hospital)
		:precondition (and
			(PACIENTE ?paciente)
			(AMBULANCIA ?ambulancia)
			(LOCALIZACION ?loc)
			(HOSPITAL ?hospital)
			(ubicado ?ambulancia ?loc)
			(en ?paciente ?ambulancia)
		)
		:effect (and
			(not (en ?paciente ?ambulancia))
			(en ?ambulancia ?hospital)
			(ubicado ?paciente ?loc)
			(ubicado ?ambulancia ?loc)
			(not (ocupado ?paciente))
		)
	)

	(:action INTERNAR-PACIENTE
		:parameters (?paciente ?hospital ?loc)
		:precondition (and
			(PACIENTE ?paciente)
			(LOCALIZACION ?loc)
			(HOSPITAL ?hospital)
			(ubicado ?paciente ?loc)
			(ubicado ?hospital ?loc)
		)
		:effect (and
			(en ?paciente ?hospital)
		)
	)

	(:action CONDUCIR-AMBULANCIA
		:parameters (?hospital ?ambulancia ?loc_origen ?loc_destino)
		:precondition (and
			(HOSPITAL ?hospital)
			(AMBULANCIA ?ambulancia)
			(LOCALIZACION ?loc_origen)
			(LOCALIZACION ?loc_destino)
			(ubicado ?ambulancia ?loc_origen)
			(conectado ?loc_origen ?loc_destino)
		)
		:effect (and 
			(not (ubicado ?ambulancia ?loc_origen)) 
			(ubicado ?ambulancia ?loc_destino)
			(conduciendo ?ambulancia)
		)
	)
)