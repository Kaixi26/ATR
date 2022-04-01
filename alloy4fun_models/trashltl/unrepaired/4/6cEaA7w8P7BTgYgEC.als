open main
pred id6cEaA7w8P7BTgYgEC_prop5 {
	always all f : File | eventually f in Trash
}
pred __repair { id6cEaA7w8P7BTgYgEC_prop5 }
check __repair { id6cEaA7w8P7BTgYgEC_prop5 <=> prop5o }