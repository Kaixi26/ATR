open main
pred idd5kQSpF6HkXi6xYWC_prop9 {
	all f: Protected | historically f not in Trash and always f not in Trash
}
pred __repair { idd5kQSpF6HkXi6xYWC_prop9 }
check __repair { idd5kQSpF6HkXi6xYWC_prop9 <=> prop9o }