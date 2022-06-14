open main
pred idYtunvd4fb8TNr4rJv_prop8 {
	
	always ( all tk:Track | some tk.signal implies (tk.signal in Green) releases ( #(pos.tk') = #(pos.tk) ) ) 
}
pred __repair { idYtunvd4fb8TNr4rJv_prop8 }
check __repair { idYtunvd4fb8TNr4rJv_prop8 <=> prop8o }