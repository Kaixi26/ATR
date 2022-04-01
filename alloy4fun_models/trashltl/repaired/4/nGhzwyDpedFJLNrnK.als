open main
pred idnGhzwyDpedFJLNrnK_prop5 {
	always (some f:File | eventually no f&File)
}
pred __repair { idnGhzwyDpedFJLNrnK_prop5 }
check __repair { idnGhzwyDpedFJLNrnK_prop5 <=> prop5o }