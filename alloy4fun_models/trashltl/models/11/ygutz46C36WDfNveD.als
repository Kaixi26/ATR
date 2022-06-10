open main
pred idygutz46C36WDfNveD_prop12 {
	eventually (some f : File | eventually f in Trash implies f in Trash')
}
pred __repair { idygutz46C36WDfNveD_prop12 }
check __repair { idygutz46C36WDfNveD_prop12 <=> prop12o }