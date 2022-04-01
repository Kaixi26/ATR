open main
pred idwwp56Raxd56c96qcZ_prop8 {
	always (all f:File| eventually  f.*link    in Trash)
}
pred __repair { idwwp56Raxd56c96qcZ_prop8 }
check __repair { idwwp56Raxd56c96qcZ_prop8 <=> prop8o }