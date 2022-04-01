open main
pred idjJi5NjmLWdbD3yp6n_prop11 {
	always all f:File | always f not in Protected implies f in Protected' 
}
pred __repair { idjJi5NjmLWdbD3yp6n_prop11 }
check __repair { idjJi5NjmLWdbD3yp6n_prop11 <=> prop11o }