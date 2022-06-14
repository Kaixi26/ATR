open main
pred idiyeFBBPDHr2zATriH_prop7 {
	
	eventually all t : Train | t.pos = Exit
}
pred __repair { idiyeFBBPDHr2zATriH_prop7 }
check __repair { idiyeFBBPDHr2zATriH_prop7 <=> prop7o }