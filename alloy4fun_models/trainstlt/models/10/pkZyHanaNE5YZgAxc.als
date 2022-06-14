open main
pred idpkZyHanaNE5YZgAxc_prop11 {
	
	all t:Train | always one t.pos implies once t.pos in Entry
}
pred __repair { idpkZyHanaNE5YZgAxc_prop11 }
check __repair { idpkZyHanaNE5YZgAxc_prop11 <=> prop11o }