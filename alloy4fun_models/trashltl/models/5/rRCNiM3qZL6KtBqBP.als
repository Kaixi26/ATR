open main
pred idrRCNiM3qZL6KtBqBP_prop6 {
	all f:File | f in Trash releases (f in Trash)
}
pred __repair { idrRCNiM3qZL6KtBqBP_prop6 }
check __repair { idrRCNiM3qZL6KtBqBP_prop6 <=> prop6o }