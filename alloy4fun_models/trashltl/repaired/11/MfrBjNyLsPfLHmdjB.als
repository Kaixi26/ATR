open main
pred idMfrBjNyLsPfLHmdjB_prop12 {
	all f:File |  eventually always f in Trash 
}
pred __repair { idMfrBjNyLsPfLHmdjB_prop12 }
check __repair { idMfrBjNyLsPfLHmdjB_prop12 <=> prop12o }