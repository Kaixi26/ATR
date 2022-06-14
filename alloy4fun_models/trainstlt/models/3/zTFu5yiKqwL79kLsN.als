open main
pred idzTFu5yiKqwL79kLsN_prop4 {
	
	
  	all t1,t2 : Train | no (t1.pos & t2.pos) 
}
pred __repair { idzTFu5yiKqwL79kLsN_prop4 }
check __repair { idzTFu5yiKqwL79kLsN_prop4 <=> prop4o }