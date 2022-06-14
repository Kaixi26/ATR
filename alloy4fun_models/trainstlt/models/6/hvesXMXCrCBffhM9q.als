open main
pred idhvesXMXCrCBffhM9q_prop7 {
	
	all t : Train | eventually always no t.pos
}
pred __repair { idhvesXMXCrCBffhM9q_prop7 }
check __repair { idhvesXMXCrCBffhM9q_prop7 <=> prop7o }