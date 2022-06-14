open main
pred idYvwiiQG7Yu7SwEDRj_prop9 {
	
	always ( all t:Train |no t.pos implies  eventually ( some t.pos and t.pos in Entry) )
}
pred __repair { idYvwiiQG7Yu7SwEDRj_prop9 }
check __repair { idYvwiiQG7Yu7SwEDRj_prop9 <=> prop9o }