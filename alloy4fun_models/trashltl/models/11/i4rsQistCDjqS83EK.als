open main
pred idi4rsQistCDjqS83EK_prop12 {
	 some f:File | f not in Trash implies always f in Trash'
}
pred __repair { idi4rsQistCDjqS83EK_prop12 }
check __repair { idi4rsQistCDjqS83EK_prop12 <=> prop12o }