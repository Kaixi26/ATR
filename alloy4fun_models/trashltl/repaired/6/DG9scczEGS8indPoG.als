open main
pred idDG9scczEGS8indPoG_prop7 {
	always all f : File | after eventually f in Protected
}
pred __repair { idDG9scczEGS8indPoG_prop7 }
check __repair { idDG9scczEGS8indPoG_prop7 <=> prop7o }