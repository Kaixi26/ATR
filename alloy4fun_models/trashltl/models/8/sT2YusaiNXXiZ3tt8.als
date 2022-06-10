open main
pred idsT2YusaiNXXiZ3tt8_prop9 {
	all f: File | always(once f in Protected implies always f not in Trash)
}
pred __repair { idsT2YusaiNXXiZ3tt8_prop9 }
check __repair { idsT2YusaiNXXiZ3tt8_prop9 <=> prop9o }