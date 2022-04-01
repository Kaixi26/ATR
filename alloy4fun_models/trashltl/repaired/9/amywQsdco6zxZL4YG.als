open main
pred idamywQsdco6zxZL4YG_prop10 {
	 all f:File | f in Protected implies always  f in Protected'
}
pred __repair { idamywQsdco6zxZL4YG_prop10 }
check __repair { idamywQsdco6zxZL4YG_prop10 <=> prop10o }