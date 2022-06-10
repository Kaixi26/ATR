open main
pred idw7hDXrSYsBTQE4krr_prop8 {
	eventually all f:File | f in f.link implies f.link in Trash
}
pred __repair { idw7hDXrSYsBTQE4krr_prop8 }
check __repair { idw7hDXrSYsBTQE4krr_prop8 <=> prop8o }