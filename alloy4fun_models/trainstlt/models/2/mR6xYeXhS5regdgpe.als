open main
pred idmR6xYeXhS5regdgpe_prop3 {
	
	all t : Train | always t.pos in Entry or t.pos in Exit
}
pred __repair { idmR6xYeXhS5regdgpe_prop3 }
check __repair { idmR6xYeXhS5regdgpe_prop3 <=> prop3o }