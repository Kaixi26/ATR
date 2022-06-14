open main
pred idBij5wWJCHt7997Zqk_prop8 {
	
	always ( all t:Train | some t.pos.signal and t.pos.signal in Green implies t.pos' = t.pos )
}
pred __repair { idBij5wWJCHt7997Zqk_prop8 }
check __repair { idBij5wWJCHt7997Zqk_prop8 <=> prop8o }