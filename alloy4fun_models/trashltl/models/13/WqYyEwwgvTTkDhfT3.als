open main
pred idWqYyEwwgvTTkDhfT3_prop14 {
	always (all f : Protected | f in Trash implies after f not in Trash)
}
pred __repair { idWqYyEwwgvTTkDhfT3_prop14 }
check __repair { idWqYyEwwgvTTkDhfT3_prop14 <=> prop14o }