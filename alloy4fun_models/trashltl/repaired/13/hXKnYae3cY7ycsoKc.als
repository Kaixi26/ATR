open main
pred idhXKnYae3cY7ycsoKc_prop14 {
	always(all f:File&Protected&Trash | after f in File&Trash)
}
pred __repair { idhXKnYae3cY7ycsoKc_prop14 }
check __repair { idhXKnYae3cY7ycsoKc_prop14 <=> prop14o }