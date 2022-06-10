open main
pred id5NdBmFo62S4zckgT4_prop20 {
	always all t: File | t not in Protected since t in Trash
}
pred __repair { id5NdBmFo62S4zckgT4_prop20 }
check __repair { id5NdBmFo62S4zckgT4_prop20 <=> prop20o }