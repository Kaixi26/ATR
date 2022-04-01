open main
pred idtoDv6FRfGb4hYgQrh_prop8 {
	eventually all f:File | one f.link implies eventually f in Trash
}
pred __repair { idtoDv6FRfGb4hYgQrh_prop8 }
check __repair { idtoDv6FRfGb4hYgQrh_prop8 <=> prop8o }