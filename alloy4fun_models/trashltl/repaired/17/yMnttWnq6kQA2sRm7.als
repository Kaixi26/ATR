open main
pred idyMnttWnq6kQA2sRm7_prop18 {
	always all p : Protected | p in Protected until p in Trash
}
pred __repair { idyMnttWnq6kQA2sRm7_prop18 }
check __repair { idyMnttWnq6kQA2sRm7_prop18 <=> prop18o }