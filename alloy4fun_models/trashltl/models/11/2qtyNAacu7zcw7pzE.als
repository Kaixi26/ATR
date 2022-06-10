open main
pred id2qtyNAacu7zcw7pzE_prop12 {
	all f : File | eventually f in Trash => always ( f in Trash and eventually f not in Trash)
}
pred __repair { id2qtyNAacu7zcw7pzE_prop12 }
check __repair { id2qtyNAacu7zcw7pzE_prop12 <=> prop12o }