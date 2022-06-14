open main
pred idTGT45vnmwpFfdotNj_prop9 {
	
   (all t:Train| eventually (no t.pos and after one t.pos:>Entry))
	 
}
pred __repair { idTGT45vnmwpFfdotNj_prop9 }
check __repair { idTGT45vnmwpFfdotNj_prop9 <=> prop9o }