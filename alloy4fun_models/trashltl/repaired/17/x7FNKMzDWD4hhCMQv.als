open main
pred idx7FNKMzDWD4hhCMQv_prop18 {
	always all f:File | f in Trash implies f not in Protected
}
pred __repair { idx7FNKMzDWD4hhCMQv_prop18 }
check __repair { idx7FNKMzDWD4hhCMQv_prop18 <=> prop18o }