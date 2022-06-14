open main
pred id4dyTpBj8yEFhkNSh2_prop15 {
	
	 always (some t: Train| (no t.pos  implies some t.pos) or t.pos != t.pos')
}
pred __repair { id4dyTpBj8yEFhkNSh2_prop15 }
check __repair { id4dyTpBj8yEFhkNSh2_prop15 <=> prop15o }