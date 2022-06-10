open main
pred idtY828XP9MGeYBa4X7_prop20 {
	always (all f : Trash | f in Protected since f not in Trash)
}
pred __repair { idtY828XP9MGeYBa4X7_prop20 }
check __repair { idtY828XP9MGeYBa4X7_prop20 <=> prop20o }