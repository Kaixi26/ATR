open main
pred idRphjZFw522hZLzk5i_prop13 {
	eventually all f:File | f in Trash implies once f not in Trash
}
pred __repair { idRphjZFw522hZLzk5i_prop13 }
check __repair { idRphjZFw522hZLzk5i_prop13 <=> prop13o }