open main
pred idjCZwPuTmZd9tNvGzB_prop15 {
	
 always eventually (some Train  implies Train.pos!=Train.pos' )
}
pred __repair { idjCZwPuTmZd9tNvGzB_prop15 }
check __repair { idjCZwPuTmZd9tNvGzB_prop15 <=> prop15o }