open main
pred idBk6zyS4GmGBxziabr_prop12 {
	eventually some f : File | f not in Trash implies always f in Trash
}
pred __repair { idBk6zyS4GmGBxziabr_prop12 }
check __repair { idBk6zyS4GmGBxziabr_prop12 <=> prop12o }