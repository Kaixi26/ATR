open main
pred idv2MCjHYcb4YXkHB3d_prop20 {
	always all f : Trash | f not in Protected since f in Trash  
}
pred __repair { idv2MCjHYcb4YXkHB3d_prop20 }
check __repair { idv2MCjHYcb4YXkHB3d_prop20 <=> prop20o }