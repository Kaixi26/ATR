open main
pred idqeKvbXEgz4KuppLNa_prop6 {
	
	always ( all s : Signal | (s in Green implies s' not in Green) and (s not in Green implies s' in Green) )
}
pred __repair { idqeKvbXEgz4KuppLNa_prop6 }
check __repair { idqeKvbXEgz4KuppLNa_prop6 <=> prop6o }