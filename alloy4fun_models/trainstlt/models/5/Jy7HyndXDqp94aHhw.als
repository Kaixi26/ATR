open main
pred idJy7HyndXDqp94aHhw_prop6 {
	
	all t : Track | always t.signal != t.signal'
}
pred __repair { idJy7HyndXDqp94aHhw_prop6 }
check __repair { idJy7HyndXDqp94aHhw_prop6 <=> prop6o }