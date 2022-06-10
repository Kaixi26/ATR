open main
pred idz5FmabrbEXez9yB6Y_prop16 {
	all f : File | f in Protected implies once not (f in Protected)
}
pred __repair { idz5FmabrbEXez9yB6Y_prop16 }
check __repair { idz5FmabrbEXez9yB6Y_prop16 <=> prop16o }