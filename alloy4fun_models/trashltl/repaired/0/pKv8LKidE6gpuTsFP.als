open main
pred idpKv8LKidE6gpuTsFP_prop1 {
	always( no Trash and no Protected)
}
pred __repair { idpKv8LKidE6gpuTsFP_prop1 }
check __repair { idpKv8LKidE6gpuTsFP_prop1 <=> prop1o }