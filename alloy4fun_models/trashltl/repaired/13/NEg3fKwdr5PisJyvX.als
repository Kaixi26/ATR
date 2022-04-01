open main
pred idNEg3fKwdr5PisJyvX_prop14 {
	always some f : Protected & Trash | f not in Protected'
}
pred __repair { idNEg3fKwdr5PisJyvX_prop14 }
check __repair { idNEg3fKwdr5PisJyvX_prop14 <=> prop14o }