open main
pred idzWEvN4vHBJj7fcjQn_prop20 {
	always all f : File | f in Trash since f not in Protected   
}
pred __repair { idzWEvN4vHBJj7fcjQn_prop20 }
check __repair { idzWEvN4vHBJj7fcjQn_prop20 <=> prop20o }