open main
pred idoCk2Yj4jF6fmnFo7y_prop12 {
	eventually (all f:File | eventually f in Trash implies always f in Trash)
}
pred __repair { idoCk2Yj4jF6fmnFo7y_prop12 }
check __repair { idoCk2Yj4jF6fmnFo7y_prop12 <=> prop12o }