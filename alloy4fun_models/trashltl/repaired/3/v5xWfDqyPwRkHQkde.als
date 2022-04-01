open main
pred idv5xWfDqyPwRkHQkde_prop4 {
	always some f:File | eventually f in Trash
}
pred __repair { idv5xWfDqyPwRkHQkde_prop4 }
check __repair { idv5xWfDqyPwRkHQkde_prop4 <=> prop4o }