open main
pred idBM8acY6B6GXzfZNYw_prop12 {
	always (all f:File&Trash | f in Trash)
}
pred __repair { idBM8acY6B6GXzfZNYw_prop12 }
check __repair { idBM8acY6B6GXzfZNYw_prop12 <=> prop12o }