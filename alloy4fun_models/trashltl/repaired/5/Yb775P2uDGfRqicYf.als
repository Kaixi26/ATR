open main
pred idYb775P2uDGfRqicYf_prop6 {
	all f : File | f in Trash => always f in Trash	
}
pred __repair { idYb775P2uDGfRqicYf_prop6 }
check __repair { idYb775P2uDGfRqicYf_prop6 <=> prop6o }