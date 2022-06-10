open main
pred idvHy3K3ARdcMtZngZc_prop5 {
	all f : Trash | always eventually f not in File
}
pred __repair { idvHy3K3ARdcMtZngZc_prop5 }
check __repair { idvHy3K3ARdcMtZngZc_prop5 <=> prop5o }