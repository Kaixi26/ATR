open main
pred id4fNukhWP7Dy7xLwq2_prop6 {
	
	always all s: Signal | always s in Green implies s' not in Green
}
pred __repair { id4fNukhWP7Dy7xLwq2_prop6 }
check __repair { id4fNukhWP7Dy7xLwq2_prop6 <=> prop6o }