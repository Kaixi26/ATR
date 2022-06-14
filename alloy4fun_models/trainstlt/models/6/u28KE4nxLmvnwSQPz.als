open main
pred idu28KE4nxLmvnwSQPz_prop7 {
	
	eventually all t : Train | (t.pos = Exit) implies (no t.pos')
}
pred __repair { idu28KE4nxLmvnwSQPz_prop7 }
check __repair { idu28KE4nxLmvnwSQPz_prop7 <=> prop7o }