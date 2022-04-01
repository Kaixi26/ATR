open main
pred idPjx6PmPYTec37Krrq_prop16 {
	all f: File | eventually f in Protected implies historically f in Protected
}
pred __repair { idPjx6PmPYTec37Krrq_prop16 }
check __repair { idPjx6PmPYTec37Krrq_prop16 <=> prop16o }