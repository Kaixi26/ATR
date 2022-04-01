open main
pred idb89HJGtJMzSHFJKDz_prop9 {
	always (all f:Protected | always f not in Trash)
}
pred __repair { idb89HJGtJMzSHFJKDz_prop9 }
check __repair { idb89HJGtJMzSHFJKDz_prop9 <=> prop9o }