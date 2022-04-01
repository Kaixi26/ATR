open main
pred id5KDgyuKxKt9bqsBbA_prop8 {
	all l: File.link | eventually l in Trash
}
pred __repair { id5KDgyuKxKt9bqsBbA_prop8 }
check __repair { id5KDgyuKxKt9bqsBbA_prop8 <=> prop8o }