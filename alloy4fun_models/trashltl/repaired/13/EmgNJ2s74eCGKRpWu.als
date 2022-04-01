open main
pred idEmgNJ2s74eCGKRpWu_prop14 {
	all f : Protected & Trash | always (after f not in Protected) 
}
pred __repair { idEmgNJ2s74eCGKRpWu_prop14 }
check __repair { idEmgNJ2s74eCGKRpWu_prop14 <=> prop14o }