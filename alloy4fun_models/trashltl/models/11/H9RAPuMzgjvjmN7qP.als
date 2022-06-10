open main
pred idH9RAPuMzgjvjmN7qP_prop12 {
	always eventually some f : File | f not in Trash implies f in Trash'
}
pred __repair { idH9RAPuMzgjvjmN7qP_prop12 }
check __repair { idH9RAPuMzgjvjmN7qP_prop12 <=> prop12o }