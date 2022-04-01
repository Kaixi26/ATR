open main
pred idEmwD3aA3jwGD6LWmf_prop5 {
	some f : File| f not in Trash and eventually f not in File
}
pred __repair { idEmwD3aA3jwGD6LWmf_prop5 }
check __repair { idEmwD3aA3jwGD6LWmf_prop5 <=> prop5o }