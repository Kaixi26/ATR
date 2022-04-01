open main
pred idGt5bKjvFqkK5yuqjg_prop8 {
	always (all f:File| some f.*link  implies always eventually  f.*link  in Trash)
}
pred __repair { idGt5bKjvFqkK5yuqjg_prop8 }
check __repair { idGt5bKjvFqkK5yuqjg_prop8 <=> prop8o }