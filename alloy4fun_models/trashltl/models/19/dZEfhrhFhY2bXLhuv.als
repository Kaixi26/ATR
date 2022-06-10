open main
pred iddZEfhrhFhY2bXLhuv_prop20 {
	always some f : File | f not in Protected since f in Trash  
}
pred __repair { iddZEfhrhFhY2bXLhuv_prop20 }
check __repair { iddZEfhrhFhY2bXLhuv_prop20 <=> prop20o }