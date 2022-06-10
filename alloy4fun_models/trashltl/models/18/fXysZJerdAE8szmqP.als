open main
pred idfXysZJerdAE8szmqP_prop19 {
	eventually all f:File | f in Protected until f in Trash
}
pred __repair { idfXysZJerdAE8szmqP_prop19 }
check __repair { idfXysZJerdAE8szmqP_prop19 <=> prop19o }