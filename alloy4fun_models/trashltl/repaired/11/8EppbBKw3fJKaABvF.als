open main
pred id8EppbBKw3fJKaABvF_prop12 {
	always all f:File | eventually f in Trash implies f in Trash
}
pred __repair { id8EppbBKw3fJKaABvF_prop12 }
check __repair { id8EppbBKw3fJKaABvF_prop12 <=> prop12o }