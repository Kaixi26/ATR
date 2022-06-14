open main
pred idnbv9JNyWFf9pe6pHG_prop6 {
	
	always (all s : Signal | (s in Green implies (eventually s not in Green)) or 
  		   		s not in Green implies (eventually s in Green))
}
pred __repair { idnbv9JNyWFf9pe6pHG_prop6 }
check __repair { idnbv9JNyWFf9pe6pHG_prop6 <=> prop6o }