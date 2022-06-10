open main
pred idezWR3wj6Ht6txJK8N_prop15 {
	eventually (all f:File | eventually f in Trash)
}
pred __repair { idezWR3wj6Ht6txJK8N_prop15 }
check __repair { idezWR3wj6Ht6txJK8N_prop15 <=> prop15o }