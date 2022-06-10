open main
pred idF9euQ3mgSzHBNHsvk_prop16 {
	 all f:File |  f in Protected implies always after f in Protected
}
pred __repair { idF9euQ3mgSzHBNHsvk_prop16 }
check __repair { idF9euQ3mgSzHBNHsvk_prop16 <=> prop16o }