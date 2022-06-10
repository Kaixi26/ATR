open main
pred idrCR2p5rXWLJYaSgMA_prop18 {
	all f : Protected | always (f in Trash' => f not in Protected')
}
pred __repair { idrCR2p5rXWLJYaSgMA_prop18 }
check __repair { idrCR2p5rXWLJYaSgMA_prop18 <=> prop18o }