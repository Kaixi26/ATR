open main
pred idXS52JDeBZCebX9EN6_prop20 {
	always all t: Trash | t not in Protected since t in Protected
}
pred __repair { idXS52JDeBZCebX9EN6_prop20 }
check __repair { idXS52JDeBZCebX9EN6_prop20 <=> prop20o }