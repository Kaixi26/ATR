open main
pred idn3vECZX3FoYB79eJC_prop6 {
	all f: File | f in Trash implies always f in Trash
}
pred __repair { idn3vECZX3FoYB79eJC_prop6 }
check __repair { idn3vECZX3FoYB79eJC_prop6 <=> prop6o }