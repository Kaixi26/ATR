open main
pred idcyXviBXn5dj3coRgs_prop17 {
	always all f : File | f not in File since f in Trash and eventually f in Trash
}
pred __repair { idcyXviBXn5dj3coRgs_prop17 }
check __repair { idcyXviBXn5dj3coRgs_prop17 <=> prop17o }