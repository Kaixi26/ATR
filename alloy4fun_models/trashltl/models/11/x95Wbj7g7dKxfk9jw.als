open main
pred idx95Wbj7g7dKxfk9jw_prop12 {
	always(some f:File | eventually always f in Trash)
}
pred __repair { idx95Wbj7g7dKxfk9jw_prop12 }
check __repair { idx95Wbj7g7dKxfk9jw_prop12 <=> prop12o }