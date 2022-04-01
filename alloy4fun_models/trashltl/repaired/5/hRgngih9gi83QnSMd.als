open main
pred idhRgngih9gi83QnSMd_prop6 {
	all f:File | f in Trash implies always f in Trash
}
pred __repair { idhRgngih9gi83QnSMd_prop6 }
check __repair { idhRgngih9gi83QnSMd_prop6 <=> prop6o }