open main
pred id9m5N5rh6Cv8dTEwHA_prop15 {
	
	all t : Train | eventually t.pos != t.pos'
}
pred __repair { id9m5N5rh6Cv8dTEwHA_prop15 }
check __repair { id9m5N5rh6Cv8dTEwHA_prop15 <=> prop15o }