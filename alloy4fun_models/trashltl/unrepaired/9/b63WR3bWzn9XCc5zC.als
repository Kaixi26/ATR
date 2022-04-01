open main
pred idb63WR3bWzn9XCc5zC_prop10 {
	always (all f:File | f in Protected)
}
pred __repair { idb63WR3bWzn9XCc5zC_prop10 }
check __repair { idb63WR3bWzn9XCc5zC_prop10 <=> prop10o }