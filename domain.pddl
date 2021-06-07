(define (domain conductorlog)
	(:requirements :strips)
	(:predicates
		(OBJ ?obj)
		(AMBULANCIA ?ambulancia)
		(LOCALIZACION ?loc)
		(at ?obj ?loc)
		(in ?obj1 ?obj)
		( movilizandose ?v)
		(link ?x ?y)
		(DESOCUPAR ?v)
		;(OCUPAR_NEW ?v)
	)

	(:action SUBIR-PACIENTE
		:parameters (?obj ?ambulancia ?loc)
		:precondition (and (OBJ ?obj) (AMBULANCIA ?ambulancia) (LOCALIZACION ?loc)
			(at ?ambulancia ?loc) (at ?obj ?loc))
		:effect (and (not (at ?obj ?loc)) (in ?obj ?ambulancia) (DESOCUPAR ?ambulancia))
	)

	(:action BAJAR-PACIENTE
		:parameters (?conductor ?ambulancia ?loc)
		:precondition (and (AMBULANCIA ?ambulancia) (LOCALIZACION ?loc)
			(at ?ambulancia ?loc) (  movilizandose  ?ambulancia))
		:effect (and (not (  movilizandose  ?ambulancia)) (at ?conductor ?loc) (DESOCUPAR ?ambulancia))
	)

	(:action CONDUCIR-AMBULANCIA
		:parameters (?ambulancia ?loc_origen ?loc_destino ?conductor)
		:precondition (and (AMBULANCIA ?ambulancia) (LOCALIZACION ?loc_origen) (LOCALIZACION ?loc_destino)
			(at ?ambulancia ?loc_origen)
			(  movilizandose  ?ambulancia) (link ?loc_origen ?loc_destino))
		:effect (and (not (at ?ambulancia ?loc_origen)) (at ?ambulancia ?loc_destino))
	)

)