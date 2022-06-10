open main
pred idBFbBhR5bNHPQMhKJm_prop11 {
	always all f:File | eventually f not in Protected implies f in Protected' 
}
pred __repair { idBFbBhR5bNHPQMhKJm_prop11 }
check __repair { idBFbBhR5bNHPQMhKJm_prop11 <=> prop11o }