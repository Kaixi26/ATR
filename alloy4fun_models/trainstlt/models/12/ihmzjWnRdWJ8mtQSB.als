open main
pred idihmzjWnRdWJ8mtQSB_prop13 {
	
  	always all t : Train | no t.pos implies always no t.pos
}
pred __repair { idihmzjWnRdWJ8mtQSB_prop13 }
check __repair { idihmzjWnRdWJ8mtQSB_prop13 <=> prop13o }