open main
pred idDTmWmRcXKqFcg67wE_prop14 {
	all f : File | f in Trash' implies after f not in Protected 
}
pred __repair { idDTmWmRcXKqFcg67wE_prop14 }
check __repair { idDTmWmRcXKqFcg67wE_prop14 <=> prop14o }