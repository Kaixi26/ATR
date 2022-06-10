open main
pred id5rWMEicjejryTfnDE_prop15 {
	eventually all f:File | f not in Trash implies f in Trash'
}
pred __repair { id5rWMEicjejryTfnDE_prop15 }
check __repair { id5rWMEicjejryTfnDE_prop15 <=> prop15o }