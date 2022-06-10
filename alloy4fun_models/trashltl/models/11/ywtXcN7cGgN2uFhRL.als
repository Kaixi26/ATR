open main
pred idywtXcN7cGgN2uFhRL_prop12 {
	eventually some f:File | f in Trash implies after f in Trash
}
pred __repair { idywtXcN7cGgN2uFhRL_prop12 }
check __repair { idywtXcN7cGgN2uFhRL_prop12 <=> prop12o }