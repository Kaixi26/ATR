open main
pred id5pXZMGSdnQfeEjjkp_prop4 {
	some f:File | eventually f' in Trash'
}
pred __repair { id5pXZMGSdnQfeEjjkp_prop4 }
check __repair { id5pXZMGSdnQfeEjjkp_prop4 <=> prop4o }