open main
pred idcf5atQ9pjABboGBE2_prop12 {
	eventually some f:File | f not in Trash implies always f in Trash'
}
pred __repair { idcf5atQ9pjABboGBE2_prop12 }
check __repair { idcf5atQ9pjABboGBE2_prop12 <=> prop12o }