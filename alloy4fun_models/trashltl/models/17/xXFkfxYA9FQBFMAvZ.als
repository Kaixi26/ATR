open main
pred idxXFkfxYA9FQBFMAvZ_prop18 {
	always (all f : Protected | f not in Protected implies once f in Trash)
}
pred __repair { idxXFkfxYA9FQBFMAvZ_prop18 }
check __repair { idxXFkfxYA9FQBFMAvZ_prop18 <=> prop18o }