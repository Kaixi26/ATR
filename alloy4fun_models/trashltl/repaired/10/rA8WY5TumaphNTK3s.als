open main
pred idrA8WY5TumaphNTK3s_prop11 {
	all f : File | f not in Protected => after f in Protected
}
pred __repair { idrA8WY5TumaphNTK3s_prop11 }
check __repair { idrA8WY5TumaphNTK3s_prop11 <=> prop11o }