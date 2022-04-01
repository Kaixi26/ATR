open main
pred idP6vJmxESuSZGz3vqg_prop15 {
	eventually all f:File | f not in Trash implies f in Trash
}
pred __repair { idP6vJmxESuSZGz3vqg_prop15 }
check __repair { idP6vJmxESuSZGz3vqg_prop15 <=> prop15o }