(define (domain conductorlog)
	(:requirements :strips)
	(:predicates
		(OBJ ?obj)
		(AMBULANCIA ?ambulancia)
		(LOCALIZACION ?loc)
		(conductor ?d)
		(at ?obj ?loc)
		(in ?obj1 ?obj)
		(conduciendo ?d ?v)
		(link ?x ?y)
		(path ?x ?y)
		(DESOCUPAR ?v)
	)

	(:action ABRIR-AMBULANCIA
		:parameters (?obj ?ambulancia ?loc)
		:precondition (and (OBJ ?obj) (AMBULANCIA ?ambulancia) (LOCALIZACION ?loc)
			(at ?ambulancia ?loc) (at ?obj ?loc))
		:effect (and (not (at ?obj ?loc)) (in ?obj ?ambulancia))
	)

	(:action CERRAR-AMBULANCIA
		:parameters (?obj ?ambulancia ?loc)
		:precondition (and (OBJ ?obj) (AMBULANCIA ?ambulancia) (LOCALIZACION ?loc)
			(at ?ambulancia ?loc) (in ?obj ?ambulancia))
		:effect (and (not (in ?obj ?ambulancia)) (at ?obj ?loc))
	)

	(:action HISTORIAL-AMBULANCIA
		:parameters (?conductor ?ambulancia ?loc)
		:precondition (and (CONDUCTOR ?conductor) (AMBULANCIA ?ambulancia) (LOCALIZACION ?loc)
			(at ?ambulancia ?loc) (at ?conductor ?loc) (DESOCUPAR ?ambulancia))
		:effect (and (not (at ?conductor ?loc)) (conduciendo ?conductor ?ambulancia) (not (DESOCUPAR ?ambulancia)))
	)

	(:action BAJAR-AMBULANCIA
		:parameters (?conductor ?ambulancia ?loc)
		:precondition (and (CONDUCTOR ?conductor) (AMBULANCIA ?ambulancia) (LOCALIZACION ?loc)
			(at ?ambulancia ?loc) (conduciendo ?conductor ?ambulancia))
		:effect (and (not (conduciendo ?conductor ?ambulancia)) (at ?conductor ?loc) (DESOCUPAR ?ambulancia))
	)

	(:action CONDUCIR-AMBULANCIA
		:parameters (?ambulancia ?loc_origen ?loc_destino ?conductor)
		:precondition (and (AMBULANCIA ?ambulancia) (LOCALIZACION ?loc_origen) (LOCALIZACION ?loc_destino) (CONDUCTOR ?conductor)
			(at ?ambulancia ?loc_origen)
			(conduciendo ?conductor ?ambulancia) (link ?loc_origen ?loc_destino))
		:effect (and (not (at ?ambulancia ?loc_origen)) (at ?ambulancia ?loc_destino))
	)

	(:action CAMINAR
		:parameters (?conductor ?loc_origen ?loc_destino)
		:precondition (and (CONDUCTOR ?conductor) (LOCALIZACION ?loc_origen) (LOCALIZACION ?loc_destino)
			(at ?conductor ?loc_origen) (path ?loc_origen ?loc_destino))
		:effect (and (not (at ?conductor ?loc_origen)) (at ?conductor ?loc_destino))
	)

)