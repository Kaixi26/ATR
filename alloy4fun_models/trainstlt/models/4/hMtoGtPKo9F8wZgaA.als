open main
pred idhMtoGtPKo9F8wZgaA_prop5 {
	

    all t:Train |{
     	always (t.pos in Exit implies   t.pos'=none)
      	
    }
  	
}
pred __repair { idhMtoGtPKo9F8wZgaA_prop5 }
check __repair { idhMtoGtPKo9F8wZgaA_prop5 <=> prop5o }