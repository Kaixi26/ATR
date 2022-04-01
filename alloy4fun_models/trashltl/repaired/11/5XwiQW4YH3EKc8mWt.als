open main
pred id5XwiQW4YH3EKc8mWt_prop12 {
	some f:File | eventually always f in Trash
}
pred __repair { id5XwiQW4YH3EKc8mWt_prop12 }
check __repair { id5XwiQW4YH3EKc8mWt_prop12 <=> prop12o }