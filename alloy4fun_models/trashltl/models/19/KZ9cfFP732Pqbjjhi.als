open main
pred idKZ9cfFP732Pqbjjhi_prop20 {
	always all f : Protected | f not in Protected since f in Trash  
}
pred __repair { idKZ9cfFP732Pqbjjhi_prop20 }
check __repair { idKZ9cfFP732Pqbjjhi_prop20 <=> prop20o }