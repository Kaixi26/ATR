open main
pred id62rNB5mSMK2hnA27N_prop12 {
	eventually all f: File | f in Trash implies always f in Trash
}
pred __repair { id62rNB5mSMK2hnA27N_prop12 }
check __repair { id62rNB5mSMK2hnA27N_prop12 <=> prop12o }