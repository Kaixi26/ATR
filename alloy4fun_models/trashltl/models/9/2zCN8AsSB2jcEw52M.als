open main
pred id2zCN8AsSB2jcEw52M_prop10 {
	always all f: File | once f in Protected implies always f in Protected
}
pred __repair { id2zCN8AsSB2jcEw52M_prop10 }
check __repair { id2zCN8AsSB2jcEw52M_prop10 <=> prop10o }