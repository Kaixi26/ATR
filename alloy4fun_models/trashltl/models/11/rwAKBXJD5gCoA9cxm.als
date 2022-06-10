open main
pred idrwAKBXJD5gCoA9cxm_prop12 {
	eventually always all f : File | f not in Trash implies f in Trash'
}
pred __repair { idrwAKBXJD5gCoA9cxm_prop12 }
check __repair { idrwAKBXJD5gCoA9cxm_prop12 <=> prop12o }