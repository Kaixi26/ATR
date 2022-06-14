open main
pred idRm86nBcWSrG6qQvmN_prop4 {
	
  	always all t1, t2: Train | some tr1: Track | t1.pos in tr1 and t2.pos in tr1 implies t1=t2
}
pred __repair { idRm86nBcWSrG6qQvmN_prop4 }
check __repair { idRm86nBcWSrG6qQvmN_prop4 <=> prop4o }