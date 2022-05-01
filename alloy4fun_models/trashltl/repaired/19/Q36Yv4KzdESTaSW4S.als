open main
pred idQ36Yv4KzdESTaSW4S_prop20 {
	always all t: File | t not in Protected since t in Protected
}
pred __repair { idQ36Yv4KzdESTaSW4S_prop20 }
check __repair { idQ36Yv4KzdESTaSW4S_prop20 <=> prop20o }