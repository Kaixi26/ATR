open main
pred id6EXDDSXFeh7EzRhc9_prop9 {
	
  always (all t:Train| eventually (no t.pos and after one t.pos:>Entry))
	 
}
pred __repair { id6EXDDSXFeh7EzRhc9_prop9 }
check __repair { id6EXDDSXFeh7EzRhc9_prop9 <=> prop9o }