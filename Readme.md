java -jar pddl4j-3.8.3.jar -o ./domain.pddl -f ./problem.pddl


	;	(:action RUTA-AMBULANCIA
;		:parameters (?ambulancia ?loc)
;		:precondition (and  (AMBULANCIA ?ambulancia) (LOCALIZACION ?loc)
;			(at ?ambulancia ?loc)  (DESOCUPAR ?ambulancia))
;		:effect (and  (conduciendo ?ambulancia) (not (DESOCUPAR ?ambulancia)))
;	)