open main
pred idGLDxn2kzT4ZMRitND_prop8 {
	always (all f:File| some f.^link  implies  eventually  f.*link  in Trash)

}
pred __repair { idGLDxn2kzT4ZMRitND_prop8 }
check __repair { idGLDxn2kzT4ZMRitND_prop8 <=> prop8o }