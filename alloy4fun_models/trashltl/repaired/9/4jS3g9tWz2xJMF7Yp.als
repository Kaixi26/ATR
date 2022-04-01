open main
pred id4jS3g9tWz2xJMF7Yp_prop10 {
	always(all f : File | f in Protected implies always f in Protected)
}
pred __repair { id4jS3g9tWz2xJMF7Yp_prop10 }
check __repair { id4jS3g9tWz2xJMF7Yp_prop10 <=> prop10o }