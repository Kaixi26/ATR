open main
pred idBsjRrmEAfEnfuNfjF_prop3 {
	
 	always pos = pos and (Train.pos not in Track implies always Train.pos not in Track)
}
pred __repair { idBsjRrmEAfEnfuNfjF_prop3 }
check __repair { idBsjRrmEAfEnfuNfjF_prop3 <=> prop3o }