open main
pred idWDiepwABYDYCy7Moa_prop14 {
	all f : Protected | after f not in Protected since f in Trash
}
pred __repair { idWDiepwABYDYCy7Moa_prop14 }
check __repair { idWDiepwABYDYCy7Moa_prop14 <=> prop14o }