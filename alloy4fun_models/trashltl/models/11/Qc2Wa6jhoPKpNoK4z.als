open main
pred idQc2Wa6jhoPKpNoK4z_prop12 {
	eventually all f:File | f in Trash implies  f in Trash
}
pred __repair { idQc2Wa6jhoPKpNoK4z_prop12 }
check __repair { idQc2Wa6jhoPKpNoK4z_prop12 <=> prop12o }