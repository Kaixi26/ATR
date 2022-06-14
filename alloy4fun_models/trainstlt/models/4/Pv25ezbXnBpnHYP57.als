open main
pred idPv25ezbXnBpnHYP57_prop5 {
	
	always (all t:pos.Track | (t.pos)' in t.pos + t.pos.prox or t.pos in Exit)
}
pred __repair { idPv25ezbXnBpnHYP57_prop5 }
check __repair { idPv25ezbXnBpnHYP57_prop5 <=> prop5o }