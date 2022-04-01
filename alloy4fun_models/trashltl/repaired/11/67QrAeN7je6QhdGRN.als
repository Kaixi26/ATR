open main
pred id67QrAeN7je6QhdGRN_prop12 {
	eventually (all f:File&Trash | always f in Trash)
}
pred __repair { id67QrAeN7je6QhdGRN_prop12 }
check __repair { id67QrAeN7je6QhdGRN_prop12 <=> prop12o }