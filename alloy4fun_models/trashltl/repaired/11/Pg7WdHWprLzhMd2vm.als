open main
pred idPg7WdHWprLzhMd2vm_prop12 {
	 all f:File | (eventually f in Trash) implies (always f in Trash)
}
pred __repair { idPg7WdHWprLzhMd2vm_prop12 }
check __repair { idPg7WdHWprLzhMd2vm_prop12 <=> prop12o }