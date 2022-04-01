open main
pred idBxbJLuqzqkoDHzFvP_prop18 {
	all p : Protected | p not in Protected since p in Trash
}
pred __repair { idBxbJLuqzqkoDHzFvP_prop18 }
check __repair { idBxbJLuqzqkoDHzFvP_prop18 <=> prop18o }