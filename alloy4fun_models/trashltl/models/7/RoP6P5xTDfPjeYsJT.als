open main
pred idRoP6P5xTDfPjeYsJT_prop8 {
	always all f:File | some f.link implies always eventually f in Trash 
}
pred __repair { idRoP6P5xTDfPjeYsJT_prop8 }
check __repair { idRoP6P5xTDfPjeYsJT_prop8 <=> prop8o }