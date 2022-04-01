open main
pred idie2SquWB7QiiKjBuT_prop12 {
	all f : File | eventually always f in Trash
}
pred __repair { idie2SquWB7QiiKjBuT_prop12 }
check __repair { idie2SquWB7QiiKjBuT_prop12 <=> prop12o }