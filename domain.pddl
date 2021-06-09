(define (domain ambulancia-servicio)
	(:requirements :strips)
	(:predicates
		(PACIENTE ?paciente)
		(AMBULANCIA ?ambulancia)
		(LOCALIZACION ?loc)
		(UBICADO ?paciente ?loc)
		(en ?obj1 ?obj2)
		(conduciendo ?v)
		(conectado ?x ?y)
		(HOSPITAL ?h)
		(CARGAR ?v)
	)

	(:action SUBIR-AMBULANCIA
		:parameters (?ambulancia ?paciente ?loc ?hospital)
		:precondition (and
			(PACIENTE ?paciente)
			(AMBULANCIA ?ambulancia)
			(LOCALIZACION ?loc)
			(HOSPITAL ?hospital)
			(UBICADO ?ambulancia ?loc)
			(UBICADO ?paciente ?loc)
		)
		:effect (and 
			(not (UBICADO ?paciente ?loc)) 
			(en ?paciente ?ambulancia)
			(CARGAR ?ambulancia)
		)
	)

	(:action BAJAR-AMBULANCIA
		:parameters (?ambulancia ?paciente ?loc ?hospital)
		:precondition (and
			(PACIENTE ?paciente)
			(AMBULANCIA ?ambulancia)
			(LOCALIZACION ?loc)
			(HOSPITAL ?hospital)
			(UBICADO ?ambulancia ?loc)
			(en ?paciente ?ambulancia)
			(CARGAR ?ambulancia)
		)
		:effect (and
			(not (en ?paciente ?ambulancia))
			(en ?ambulancia ?hospital)
			;(en ?paciente ?hospital)
			(UBICADO ?paciente ?loc)
			(not (CARGAR ?ambulancia))
		)
	)

	(:action CONDUCIR-AMBULANCIA
		:parameters (?hospital ?ambulancia ?loc_origen ?loc_destino)
		:precondition (and
			(HOSPITAL ?hospital)
			(AMBULANCIA ?ambulancia)
			(LOCALIZACION ?loc_origen)
			(LOCALIZACION ?loc_destino)
			(UBICADO ?ambulancia ?loc_origen)
			(conectado ?loc_origen ?loc_destino)
		)
		:effect (and 
			(not (UBICADO ?ambulancia ?loc_origen)) 
			(UBICADO ?ambulancia ?loc_destino)
			(conduciendo ?ambulancia)
		)
	)
)