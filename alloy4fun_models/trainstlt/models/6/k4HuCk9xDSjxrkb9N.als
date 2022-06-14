open main
pred idk4HuCk9xDSjxrkb9N_prop7 {
	
	always (all t:Train | some (t.pos & Entry ) implies  always (eventually some (t.pos & Exit) ))
}
pred __repair { idk4HuCk9xDSjxrkb9N_prop7 }
check __repair { idk4HuCk9xDSjxrkb9N_prop7 <=> prop7o }