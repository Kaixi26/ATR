open main
pred id72mg9SHCbikXkvFtW_prop11 {
	
	always (all t:Train | some t.pos implies once t.pos in Entry) 
}
pred __repair { id72mg9SHCbikXkvFtW_prop11 }
check __repair { id72mg9SHCbikXkvFtW_prop11 <=> prop11o }