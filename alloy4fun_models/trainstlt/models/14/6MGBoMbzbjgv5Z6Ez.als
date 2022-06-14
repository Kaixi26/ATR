open main
pred id6MGBoMbzbjgv5Z6Ez_prop15 {
	
	eventually always (some t: Train| (no t.pos  implies some t.pos) or t.pos != t.pos')
}
pred __repair { id6MGBoMbzbjgv5Z6Ez_prop15 }
check __repair { id6MGBoMbzbjgv5Z6Ez_prop15 <=> prop15o }