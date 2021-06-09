(define (domain ambulancia-servicio)
	(:requirements :strips)
	(:predicates
		(OBJ ?obj)
		(AMBULANCIA ?ambulancia)
		(LOCALIZACION ?loc)
		(at ?obj ?loc)
		(in ?obj1 ?obj)
		(conduciendo ?v)
		(link ?x ?y)
		(HOSPITAL ?h)
		(CARGAR ?v)
	)

	(:action SUBIR-AMBULANCIA
		:parameters (?obj ?ambulancia ?loc)
		:precondition (and (OBJ ?obj) (AMBULANCIA ?ambulancia) (LOCALIZACION ?loc)
			(at ?ambulancia ?loc) (at ?obj ?loc)
			)
		:effect (and (not (at ?obj ?loc)) (in ?obj ?ambulancia)
		(CARGAR ?ambulancia)
		)
	)

	(:action BAJAR-AMBULANCIA
		:parameters (?obj ?ambulancia ?loc)
		:precondition (and (OBJ ?obj) (AMBULANCIA ?ambulancia) (LOCALIZACION ?loc)
			(at ?ambulancia ?loc) (in ?obj ?ambulancia)
			(CARGAR ?ambulancia)
			)
		:effect (and (not (in ?obj ?ambulancia)) (at ?obj ?loc)
		(not (CARGAR ?ambulancia))
		)
	)

	(:action CONDUCIR-AMBULANCIA
		:parameters (?hospital ?ambulancia ?loc_origen ?loc_destino )
		:precondition (and(HOSPITAL ?hospital)(AMBULANCIA ?ambulancia) (LOCALIZACION ?loc_origen) (LOCALIZACION ?loc_destino) 
			(at ?ambulancia ?loc_origen)
			 (link ?loc_origen ?loc_destino))
		:effect (and (not (at ?ambulancia ?loc_origen)) (at ?ambulancia ?loc_destino)
		
		(conduciendo ?ambulancia) 
		)
	)



)