(define (domain ambulancia-sin-hospital01)
	(:requirements :strips :negative-preconditions)
	(:predicates
		(PACIENTE ?paciente)
		(AMBULANCIA ?ambulancia)
		(LOCALIZACION ?loc)
		(ubicado ?paciente ?loc)
		(en ?obj1 ?obj2)
		(conduciendo ?v)
		(conectado ?x ?y)
		(ocupado ?p)
	)

	(:action SUBIR-AMBULANCIA
		:parameters (?ambulancia ?paciente ?loc )
		:precondition (and
			(PACIENTE ?paciente)
			(AMBULANCIA ?ambulancia)
			(LOCALIZACION ?loc)
			(ubicado ?ambulancia ?loc)
			(ubicado ?paciente ?loc)
			(not (ocupado ?ambulancia))
		)
		:effect (and 
			(not (ubicado ?paciente ?loc)) 
			(en ?paciente ?ambulancia)
			(ocupado ?ambulancia)
		)
	)

	(:action BAJAR-AMBULANCIA
		:parameters (?ambulancia ?paciente ?loc)
		:precondition (and
			(PACIENTE ?paciente)
			(AMBULANCIA ?ambulancia)
			(LOCALIZACION ?loc)
			(ubicado ?ambulancia ?loc)
			(en ?paciente ?ambulancia)
			 (ocupado ?ambulancia)
		)
		:effect (and
			(not (en ?paciente ?ambulancia))
			(ubicado ?paciente ?loc)
			;(en ?paciente ?loc)
			(not (ocupado ?ambulancia))
		)
	)

	(:action CONDUCIR-AMBULANCIA
		:parameters (?ambulancia ?loc_origen ?loc_destino)
		:precondition (and
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