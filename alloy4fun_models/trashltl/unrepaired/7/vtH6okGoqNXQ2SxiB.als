open main
pred idvtH6okGoqNXQ2SxiB_prop8 {
	all f1:File , f2:File | f1.link = f2 implies eventually f2 in Trash
}
pred __repair { idvtH6okGoqNXQ2SxiB_prop8 }
check __repair { idvtH6okGoqNXQ2SxiB_prop8 <=> prop8o }