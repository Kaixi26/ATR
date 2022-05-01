open main
pred idBoQk22mS65fbgdb95_prop20 {
	always all t: File | t not in Protected since t in Protected
}
pred __repair { idBoQk22mS65fbgdb95_prop20 }
check __repair { idBoQk22mS65fbgdb95_prop20 <=> prop20o }