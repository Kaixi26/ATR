open main
pred idJ9oJpTuxFRpj3eMvt_prop6 {
	some f:File | f in Trash implies after f in Trash
}
pred __repair { idJ9oJpTuxFRpj3eMvt_prop6 }
check __repair { idJ9oJpTuxFRpj3eMvt_prop6 <=> prop6o }