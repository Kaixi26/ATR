open main
pred id59pA9xFaWN3wdKvJR_prop12 {
	always all f:File | eventually f not in Trash implies f in Trash'
}
pred __repair { id59pA9xFaWN3wdKvJR_prop12 }
check __repair { id59pA9xFaWN3wdKvJR_prop12 <=> prop12o }