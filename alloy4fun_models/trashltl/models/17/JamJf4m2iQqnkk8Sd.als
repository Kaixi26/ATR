open main
pred idJamJf4m2iQqnkk8Sd_prop18 {
	always all p : Protected | (p not in Protected') implies (p in Trash')
}
pred __repair { idJamJf4m2iQqnkk8Sd_prop18 }
check __repair { idJamJf4m2iQqnkk8Sd_prop18 <=> prop18o }