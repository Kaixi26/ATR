open main
pred idfCg8cDjn7j3R7k7f4_prop6 {
	all f: File | historically f in Trash implies always f in Trash
}
pred __repair { idfCg8cDjn7j3R7k7f4_prop6 }
check __repair { idfCg8cDjn7j3R7k7f4_prop6 <=> prop6o }