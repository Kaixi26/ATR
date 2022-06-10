open main
pred idLAdeCajAbFbS9rtjn_prop12 {
	eventually some f:File | f in Trash implies always f in Trash
}
pred __repair { idLAdeCajAbFbS9rtjn_prop12 }
check __repair { idLAdeCajAbFbS9rtjn_prop12 <=> prop12o }