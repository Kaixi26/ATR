open main
pred id98AmQjMYQpv82X7RS_prop8 {
	
	always ( all tk:Track | some tk.signal and (tk.signal in Green) implies ( #pos.tk' = #pos.tk ) ) 
}
pred __repair { id98AmQjMYQpv82X7RS_prop8 }
check __repair { id98AmQjMYQpv82X7RS_prop8 <=> prop8o }