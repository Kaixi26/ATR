open main
pred id8vJTEd9BKFBfwMF2g_prop12 {
	always (all f:File&Trash | always f in Trash)
}
pred __repair { id8vJTEd9BKFBfwMF2g_prop12 }
check __repair { id8vJTEd9BKFBfwMF2g_prop12 <=> prop12o }