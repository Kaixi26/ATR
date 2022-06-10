open main
pred idmxZLihr3ZFJygYKiv_prop8 {
	always (all f:File| some f.link  implies  eventually  f.link  in Trash)

}
pred __repair { idmxZLihr3ZFJygYKiv_prop8 }
check __repair { idmxZLihr3ZFJygYKiv_prop8 <=> prop8o }