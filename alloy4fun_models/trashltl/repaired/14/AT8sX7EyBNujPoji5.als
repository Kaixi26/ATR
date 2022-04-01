open main
pred idAT8sX7EyBNujPoji5_prop15 {
	eventually(all f:File-Trash | eventually (f in Trash))
}
pred __repair { idAT8sX7EyBNujPoji5_prop15 }
check __repair { idAT8sX7EyBNujPoji5_prop15 <=> prop15o }