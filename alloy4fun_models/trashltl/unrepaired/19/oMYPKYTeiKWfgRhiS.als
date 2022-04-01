open main
pred idoMYPKYTeiKWfgRhiS_prop20 {
	always all f : File | f in Trash releases f not in Protected
}
pred __repair { idoMYPKYTeiKWfgRhiS_prop20 }
check __repair { idoMYPKYTeiKWfgRhiS_prop20 <=> prop20o }