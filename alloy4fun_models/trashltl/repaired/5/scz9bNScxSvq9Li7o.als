open main
pred idscz9bNScxSvq9Li7o_prop6 {
	all f : File | always (f in Trash implies always f in Trash)
}
pred __repair { idscz9bNScxSvq9Li7o_prop6 }
check __repair { idscz9bNScxSvq9Li7o_prop6 <=> prop6o }