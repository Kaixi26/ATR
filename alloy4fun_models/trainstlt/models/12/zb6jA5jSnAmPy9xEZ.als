open main
pred idzb6jA5jSnAmPy9xEZ_prop13 {
	
  	always all t : Train | no t.pos implies always no t.pos'
}
pred __repair { idzb6jA5jSnAmPy9xEZ_prop13 }
check __repair { idzb6jA5jSnAmPy9xEZ_prop13 <=> prop13o }