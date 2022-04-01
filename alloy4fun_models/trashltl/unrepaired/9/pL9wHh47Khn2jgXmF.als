open main
pred idpL9wHh47Khn2jgXmF_prop10 {
	always all f: File | f in Protected since f in Protected
}
pred __repair { idpL9wHh47Khn2jgXmF_prop10 }
check __repair { idpL9wHh47Khn2jgXmF_prop10 <=> prop10o }