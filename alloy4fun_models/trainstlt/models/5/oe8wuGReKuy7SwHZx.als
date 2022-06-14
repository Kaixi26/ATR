open main
pred idoe8wuGReKuy7SwHZx_prop6 {
	
	all s : Signal | eventually (s in Green or s not in Green) 
}
pred __repair { idoe8wuGReKuy7SwHZx_prop6 }
check __repair { idoe8wuGReKuy7SwHZx_prop6 <=> prop6o }