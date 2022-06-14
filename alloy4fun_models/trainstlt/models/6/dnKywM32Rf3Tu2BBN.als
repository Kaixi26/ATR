open main
pred iddnKywM32Rf3Tu2BBN_prop7 {
	
	all t:Train | t.pos in (Entry + Exit) implies eventually t.pos not in (Entry + Exit)
}
pred __repair { iddnKywM32Rf3Tu2BBN_prop7 }
check __repair { iddnKywM32Rf3Tu2BBN_prop7 <=> prop7o }