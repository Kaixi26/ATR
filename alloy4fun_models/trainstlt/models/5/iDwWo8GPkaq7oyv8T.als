open main
pred idiDwWo8GPkaq7oyv8T_prop6 {
	
	always all s : Signal | always (s in Green implies s' not in Green) or 
  always (s not in Green implies s' in Green)
}
pred __repair { idiDwWo8GPkaq7oyv8T_prop6 }
check __repair { idiDwWo8GPkaq7oyv8T_prop6 <=> prop6o }