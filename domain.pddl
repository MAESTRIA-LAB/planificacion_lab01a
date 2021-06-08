(define (domain conductorlog)
	(:requirements :strips)
	(:predicates
		(OBJ ?obj)
		(AMBULANCIA ?ambulancia)
		(LOCALIZACION ?loc)
		;(conductor ?d)
		(at ?obj ?loc)
		(in ?obj1 ?obj)
		(conduciendo ?v)
		(link ?x ?y)
		(path ?x ?y)
		(DESOCUPAR ?v)
	)
	(:action RUTA-AMBULANCIA
		:parameters (?ambulancia ?loc)
		:precondition (and  (AMBULANCIA ?ambulancia) (LOCALIZACION ?loc)
			(at ?ambulancia ?loc)  (DESOCUPAR ?ambulancia))
		:effect (and  (conduciendo ?ambulancia) (not (DESOCUPAR ?ambulancia)))
	)

	(:action SUBIR-AMBULANCIA
		:parameters (?obj ?ambulancia ?loc)
		:precondition (and (OBJ ?obj) (AMBULANCIA ?ambulancia) (LOCALIZACION ?loc)
			(at ?ambulancia ?loc) (at ?obj ?loc))
		:effect (and (not (at ?obj ?loc)) (in ?obj ?ambulancia))
	)

	(:action BAJAR-AMBULANCIA
		:parameters (?obj ?ambulancia ?loc)
		:precondition (and (OBJ ?obj) (AMBULANCIA ?ambulancia) (LOCALIZACION ?loc)
			(at ?ambulancia ?loc) (in ?obj ?ambulancia))
		:effect (and (not (in ?obj ?ambulancia)) (at ?obj ?loc))
	)
	(:action CONDUCIR-AMBULANCIA
		:parameters (?ambulancia ?loc_origen ?loc_destino )
		:precondition (and (AMBULANCIA ?ambulancia) (LOCALIZACION ?loc_origen) (LOCALIZACION ?loc_destino) 
			(at ?ambulancia ?loc_origen)
			(conduciendo ?ambulancia) (link ?loc_origen ?loc_destino))
		:effect (and (not (at ?ambulancia ?loc_origen)) (at ?ambulancia ?loc_destino))
	)



)