open main
pred iduQzKWo23SXGjWoAsY_prop12 {
	 always (some f:File | f in Trash implies always f in Trash)
}
pred __repair { iduQzKWo23SXGjWoAsY_prop12 }
check __repair { iduQzKWo23SXGjWoAsY_prop12 <=> prop12o }