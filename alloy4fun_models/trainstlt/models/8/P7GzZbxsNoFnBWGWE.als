open main
pred idP7GzZbxsNoFnBWGWE_prop9 {
	
	  all t:Train | t.pos not in Entry and  before no t.pos and eventually ( some t.pos & Entry)   
}
pred __repair { idP7GzZbxsNoFnBWGWE_prop9 }
check __repair { idP7GzZbxsNoFnBWGWE_prop9 <=> prop9o }