open main
pred idQapkqYmMcbp5qk3KQ_prop13 {
	
	always ( all t:Train | no t.pos implies always (no t.pos))
}
pred __repair { idQapkqYmMcbp5qk3KQ_prop13 }
check __repair { idQapkqYmMcbp5qk3KQ_prop13 <=> prop13o }