open main
pred idhYvKpkGRP8LY4gyJf_prop4 {
	
  	always all t1, t2: Train | always (no t1.pos & t2.pos)
}
pred __repair { idhYvKpkGRP8LY4gyJf_prop4 }
check __repair { idhYvKpkGRP8LY4gyJf_prop4 <=> prop4o }