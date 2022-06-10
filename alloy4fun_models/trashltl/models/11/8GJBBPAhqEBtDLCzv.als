open main
pred id8GJBBPAhqEBtDLCzv_prop12 {
	always( some f: File | f not in Trash and eventually always f in Trash)
}
pred __repair { id8GJBBPAhqEBtDLCzv_prop12 }
check __repair { id8GJBBPAhqEBtDLCzv_prop12 <=> prop12o }