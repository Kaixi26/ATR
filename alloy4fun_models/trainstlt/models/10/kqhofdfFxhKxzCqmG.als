open main
pred idkqhofdfFxhKxzCqmG_prop11 {
	
	always (all t:Train | one t.pos implies once t.pos in Entry)
}
pred __repair { idkqhofdfFxhKxzCqmG_prop11 }
check __repair { idkqhofdfFxhKxzCqmG_prop11 <=> prop11o }