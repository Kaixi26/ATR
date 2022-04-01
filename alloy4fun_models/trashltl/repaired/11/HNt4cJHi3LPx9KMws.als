open main
pred idHNt4cJHi3LPx9KMws_prop12 {
	eventually all f:File |  f in Trash implies always (f in Trash)
}
pred __repair { idHNt4cJHi3LPx9KMws_prop12 }
check __repair { idHNt4cJHi3LPx9KMws_prop12 <=> prop12o }