open main
pred idwjBhA3PcfLfCNcCWE_prop4 {
	
   always all t1,t2:Train | t1.pos!=t2.pos

}
pred __repair { idwjBhA3PcfLfCNcCWE_prop4 }
check __repair { idwjBhA3PcfLfCNcCWE_prop4 <=> prop4o }