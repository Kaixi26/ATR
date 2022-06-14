open main
pred idFnpXH5dhd6fFHQidr_prop4 {
	
  always all disj t1,t2:Train |  t1.pos!=t2.pos

}
pred __repair { idFnpXH5dhd6fFHQidr_prop4 }
check __repair { idFnpXH5dhd6fFHQidr_prop4 <=> prop4o }