open main
pred id84fLtjiGBovxa9dq7_prop12 {
	eventually all f:File | f in Trash implies always f in Trash
}
pred __repair { id84fLtjiGBovxa9dq7_prop12 }
check __repair { id84fLtjiGBovxa9dq7_prop12 <=> prop12o }