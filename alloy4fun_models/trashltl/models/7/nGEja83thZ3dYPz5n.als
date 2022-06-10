open main
pred idnGEja83thZ3dYPz5n_prop8 {
	always eventually all f:File | f in link.f implies link.f in Trash
}
pred __repair { idnGEja83thZ3dYPz5n_prop8 }
check __repair { idnGEja83thZ3dYPz5n_prop8 <=> prop8o }