open main
pred idHpXKWRg9xFJT36Yae_prop18 {
	always (all f : Protected | f not in Protected implies after f in Trash)
}
pred __repair { idHpXKWRg9xFJT36Yae_prop18 }
check __repair { idHpXKWRg9xFJT36Yae_prop18 <=> prop18o }