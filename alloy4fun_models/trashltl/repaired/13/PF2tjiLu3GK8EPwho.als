open main
pred idPF2tjiLu3GK8EPwho_prop14 {
	all f : Protected & Trash | f in Trash' implies (after f not in Protected) 
}
pred __repair { idPF2tjiLu3GK8EPwho_prop14 }
check __repair { idPF2tjiLu3GK8EPwho_prop14 <=> prop14o }