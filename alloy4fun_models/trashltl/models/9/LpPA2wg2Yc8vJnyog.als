open main
pred idLpPA2wg2Yc8vJnyog_prop10 {
	always (all f:File | f in Protected)
}
pred __repair { idLpPA2wg2Yc8vJnyog_prop10 }
check __repair { idLpPA2wg2Yc8vJnyog_prop10 <=> prop10o }