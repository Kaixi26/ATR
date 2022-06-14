open main
pred idyFarCtsSoAMtBWSDW_prop3 {
	
	
  	always( all t:Train | some t.pos implies t.pos' = t.pos)
}
pred __repair { idyFarCtsSoAMtBWSDW_prop3 }
check __repair { idyFarCtsSoAMtBWSDW_prop3 <=> prop3o }