open main
pred idNyaDseDsTK9etrGsH_prop4 {
	
	all t : Train | always (lone t.pos)
}
pred __repair { idNyaDseDsTK9etrGsH_prop4 }
check __repair { idNyaDseDsTK9etrGsH_prop4 <=> prop4o }