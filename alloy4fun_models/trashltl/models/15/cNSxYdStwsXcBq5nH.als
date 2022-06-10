open main
pred idcNSxYdStwsXcBq5nH_prop16 {
	always all f : File | f in Protected implies once not (f in Protected)
}
pred __repair { idcNSxYdStwsXcBq5nH_prop16 }
check __repair { idcNSxYdStwsXcBq5nH_prop16 <=> prop16o }