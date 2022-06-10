open main
pred idmXiGDNPBL3GjbYnZG_prop8 {
	all f1,f2 : File | f1 -> f2 in link implies f1 in Trash 
}
pred __repair { idmXiGDNPBL3GjbYnZG_prop8 }
check __repair { idmXiGDNPBL3GjbYnZG_prop8 <=> prop8o }