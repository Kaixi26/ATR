open main
pred idS3kHjfRrndXa9Avee_prop15 {
	all f: File | eventually f in Trash
}
pred __repair { idS3kHjfRrndXa9Avee_prop15 }
check __repair { idS3kHjfRrndXa9Avee_prop15 <=> prop15o }