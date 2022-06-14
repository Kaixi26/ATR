open main
pred idZgfkWyjovTLx33TbN_prop15 {
	
	all t:Train | eventually (t.pos)' != t.pos
}
pred __repair { idZgfkWyjovTLx33TbN_prop15 }
check __repair { idZgfkWyjovTLx33TbN_prop15 <=> prop15o }