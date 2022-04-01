open main
pred id9JYTLwzCinaGRRKY7_prop11 {
	always all f:File | f in File-Protected implies f' in Protected
  

}
pred __repair { id9JYTLwzCinaGRRKY7_prop11 }
check __repair { id9JYTLwzCinaGRRKY7_prop11 <=> prop11o }