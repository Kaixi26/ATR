open main
pred idBC72eXpKW48pHYReK_prop5 {
	
	always all t : Train | t.pos' in t.pos.next
}
pred __repair { idBC72eXpKW48pHYReK_prop5 }
check __repair { idBC72eXpKW48pHYReK_prop5 <=> prop5o }