open main
pred idxb2d7uWRMmj9XarDK_prop5 {
	all f:File | eventually f not in File
}
pred __repair { idxb2d7uWRMmj9XarDK_prop5 }
check __repair { idxb2d7uWRMmj9XarDK_prop5 <=> prop5o }