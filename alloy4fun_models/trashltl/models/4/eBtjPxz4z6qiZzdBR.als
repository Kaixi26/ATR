open main
pred ideBtjPxz4z6qiZzdBR_prop5 {
	always some f : File | eventually f not in File'
}
pred __repair { ideBtjPxz4z6qiZzdBR_prop5 }
check __repair { ideBtjPxz4z6qiZzdBR_prop5 <=> prop5o }