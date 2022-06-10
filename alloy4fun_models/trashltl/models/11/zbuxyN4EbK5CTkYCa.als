open main
pred idzbuxyN4EbK5CTkYCa_prop12 {
	eventually (all f:File | f in Trash and (f not in Trash) releases (f in Trash))
}
pred __repair { idzbuxyN4EbK5CTkYCa_prop12 }
check __repair { idzbuxyN4EbK5CTkYCa_prop12 <=> prop12o }