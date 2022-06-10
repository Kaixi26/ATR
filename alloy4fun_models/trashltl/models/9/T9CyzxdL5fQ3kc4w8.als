open main
pred idT9CyzxdL5fQ3kc4w8_prop10 {
	always all f:File | f in Protected implies always f in Protected
}
pred __repair { idT9CyzxdL5fQ3kc4w8_prop10 }
check __repair { idT9CyzxdL5fQ3kc4w8_prop10 <=> prop10o }