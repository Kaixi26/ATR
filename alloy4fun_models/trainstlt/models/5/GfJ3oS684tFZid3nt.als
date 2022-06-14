open main
pred idGfJ3oS684tFZid3nt_prop6 {
	
	always one s : Signal | (s in Green implies s' not in Green) or 
   (s not in Green implies s' in Green)
}
pred __repair { idGfJ3oS684tFZid3nt_prop6 }
check __repair { idGfJ3oS684tFZid3nt_prop6 <=> prop6o }