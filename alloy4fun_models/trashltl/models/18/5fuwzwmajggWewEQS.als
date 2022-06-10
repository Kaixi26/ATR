open main
pred id5fuwzwmajggWewEQS_prop19 {
	all f : File | f in Protected until f in Trash
}
pred __repair { id5fuwzwmajggWewEQS_prop19 }
check __repair { id5fuwzwmajggWewEQS_prop19 <=> prop19o }