open main
pred idK6zFFDjWvG2Mcgr8W_prop7 {
	
  	all t : Train | (some t.pos) implies (eventually no t.pos')
}
pred __repair { idK6zFFDjWvG2Mcgr8W_prop7 }
check __repair { idK6zFFDjWvG2Mcgr8W_prop7 <=> prop7o }