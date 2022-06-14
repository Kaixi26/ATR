open main
pred id6RXj9PkoFGmAcx7gF_prop15 {
	
	eventually always (some t: Train| (no t.pos  implies eventually some t.pos) or t.pos != t.pos')
}
pred __repair { id6RXj9PkoFGmAcx7gF_prop15 }
check __repair { id6RXj9PkoFGmAcx7gF_prop15 <=> prop15o }