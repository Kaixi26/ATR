open main
pred id5bDYReNbrHj89HKj6_prop15 {
	
	eventually always (some t: Train| (no t.pos  implies some t.pos) or t.pos != t.pos')
}
pred __repair { id5bDYReNbrHj89HKj6_prop15 }
check __repair { id5bDYReNbrHj89HKj6_prop15 <=> prop15o }