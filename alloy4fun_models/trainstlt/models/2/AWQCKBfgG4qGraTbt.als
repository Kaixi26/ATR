open main
pred idAWQCKBfgG4qGraTbt_prop3 {
	
	all t : Train | always t.pos in Entry
}
pred __repair { idAWQCKBfgG4qGraTbt_prop3 }
check __repair { idAWQCKBfgG4qGraTbt_prop3 <=> prop3o }