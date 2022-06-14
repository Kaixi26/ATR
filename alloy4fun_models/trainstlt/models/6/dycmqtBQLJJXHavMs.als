open main
pred iddycmqtBQLJJXHavMs_prop7 {
	
	always (all t:Train | always some (t.pos & Entry ) implies eventually some (t.pos & Exit) )
}
pred __repair { iddycmqtBQLJJXHavMs_prop7 }
check __repair { iddycmqtBQLJJXHavMs_prop7 <=> prop7o }