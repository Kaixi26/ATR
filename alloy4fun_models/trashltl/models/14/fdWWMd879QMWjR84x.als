open main
pred idfdWWMd879QMWjR84x_prop15 {
	eventually (all f:File | eventually f in Trash)
}
pred __repair { idfdWWMd879QMWjR84x_prop15 }
check __repair { idfdWWMd879QMWjR84x_prop15 <=> prop15o }