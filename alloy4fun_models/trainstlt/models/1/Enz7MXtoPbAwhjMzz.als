open main
pred idEnz7MXtoPbAwhjMzz_prop2 {
	
	always all s: Signal | eventually always s in Green
}
pred __repair { idEnz7MXtoPbAwhjMzz_prop2 }
check __repair { idEnz7MXtoPbAwhjMzz_prop2 <=> prop2o }