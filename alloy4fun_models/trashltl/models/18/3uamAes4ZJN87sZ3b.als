open main
pred id3uamAes4ZJN87sZ3b_prop19 {
	always all f:File | f in Protected until f in Trash
}
pred __repair { id3uamAes4ZJN87sZ3b_prop19 }
check __repair { id3uamAes4ZJN87sZ3b_prop19 <=> prop19o }