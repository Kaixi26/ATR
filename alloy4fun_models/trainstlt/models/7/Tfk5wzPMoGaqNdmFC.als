open main
pred idTfk5wzPMoGaqNdmFC_prop8 {
	
	always ( all tk:Track | some tk.signal and (tk.signal in Green) implies ( #(pos.tk') = #(pos.tk) ) ) 
}
pred __repair { idTfk5wzPMoGaqNdmFC_prop8 }
check __repair { idTfk5wzPMoGaqNdmFC_prop8 <=> prop8o }