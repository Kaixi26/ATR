open main
pred idoqCnumi9AJxFBk7CX_prop9 {
	
    (all t:Train|  once(no t.pos and after one t.pos:>Entry) )
	 
}
pred __repair { idoqCnumi9AJxFBk7CX_prop9 }
check __repair { idoqCnumi9AJxFBk7CX_prop9 <=> prop9o }