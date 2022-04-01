open main
pred idcKeixwMFEDhxiwJ9Z_prop12 {
	eventually all f:File | f in Trash implies always f in Trash
}
pred __repair { idcKeixwMFEDhxiwJ9Z_prop12 }
check __repair { idcKeixwMFEDhxiwJ9Z_prop12 <=> prop12o }