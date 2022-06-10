open main
pred idbetskoanKwz9ocwRN_prop17 {
	always all f:File | f not in Trash and f in Trash' implies f not in File''
}
pred __repair { idbetskoanKwz9ocwRN_prop17 }
check __repair { idbetskoanKwz9ocwRN_prop17 <=> prop17o }