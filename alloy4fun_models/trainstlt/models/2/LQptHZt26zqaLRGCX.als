open main
pred idLQptHZt26zqaLRGCX_prop3 {
	
	always all t: Train | always t not in Track
}
pred __repair { idLQptHZt26zqaLRGCX_prop3 }
check __repair { idLQptHZt26zqaLRGCX_prop3 <=> prop3o }