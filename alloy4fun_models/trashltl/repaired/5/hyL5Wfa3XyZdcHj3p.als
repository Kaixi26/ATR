open main
pred idhyL5Wfa3XyZdcHj3p_prop6 {
	all f : File | f not in Trash until f in Trash
}
pred __repair { idhyL5Wfa3XyZdcHj3p_prop6 }
check __repair { idhyL5Wfa3XyZdcHj3p_prop6 <=> prop6o }