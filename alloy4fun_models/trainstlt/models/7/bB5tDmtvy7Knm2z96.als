open main
pred idbB5tDmtvy7Knm2z96_prop8 {
	
	always ( all tk:Track | some tk.signal implies (tk.signal in Green) releases ( #pos.tk' = #pos.tk ) ) 
}
pred __repair { idbB5tDmtvy7Knm2z96_prop8 }
check __repair { idbB5tDmtvy7Knm2z96_prop8 <=> prop8o }