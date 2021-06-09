(define (domain ambulancia-servicio)
	(:requirements :strips)
	(:predicates
		(PACIENTE ?paciente)
		(AMBULANCIA ?ambulancia)
		(LOCALIZACION ?loc)
		(at ?paciente ?loc)
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
			(at ?ambulancia ?loc)
			(at ?paciente ?loc)
		)
		:effect (and 
			(not (at ?paciente ?loc)) 
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
			(at ?ambulancia ?loc)
			(en ?paciente ?ambulancia)
			(CARGAR ?ambulancia)
		)
		:effect (and
			(not (en ?paciente ?ambulancia))
			(en ?ambulancia ?hospital)
			;(en ?paciente ?hospital)
			(at ?paciente ?loc)
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
			(at ?ambulancia ?loc_origen)
			(conectado ?loc_origen ?loc_destino)
		)
		:effect (and 
			(not (at ?ambulancia ?loc_origen)) 
			(at ?ambulancia ?loc_destino)
			(conduciendo ?ambulancia)
		)
	)
)