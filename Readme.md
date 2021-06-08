java-jarpddl4j-3.8.3.jar-o./domain.pddl-f./problem.pddl

java-jarpddl4j-3.8.3.jar−server−Xms2048m−Xmx2048mfr.uga.pddl4j.planners.hsp.HSP-o./domain.pddl-f./problem.pddl

lpg-td-1.0.exe -o C:\Users\ingpa\AppData\Local\Temp\domain-25208pAkOdN0Ol75E.pddl -f C:\Users\ingpa\AppData\Local\Temp\problem-25208yB2Wq2UOPi7j.pddl -n 1 

./planificadores/lpg-td-1.0.exe -o ./domain.pddl -f ./problem.pddl -n 1 


	;	(:actionRUTA-AMBULANCIA
;		:parameters(?ambulancia?loc)
;		:precondition(and(AMBULANCIA?ambulancia)(LOCALIZACION?loc)
;			(at?ambulancia?loc)(DESOCUPAR?ambulancia))
;		:effect(and(conduciendo?ambulancia)(not(DESOCUPAR?ambulancia)))
;	)



gitinit2$
git clone https://github.com/pellierd/pddl4j.git

3$ cd pddl4j
4$ ./gradlew clean build
5$ ./gradlew javadoc
6$ ./gradlew run −PArgs=−o . −f .