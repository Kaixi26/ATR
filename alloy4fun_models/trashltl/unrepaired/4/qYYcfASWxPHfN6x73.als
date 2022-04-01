open main
pred idqYYcfASWxPHfN6x73_prop5 {
	all f:File | eventually some (f.link & Trash)
}
pred __repair { idqYYcfASWxPHfN6x73_prop5 }
check __repair { idqYYcfASWxPHfN6x73_prop5 <=> prop5o }