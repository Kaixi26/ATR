open main
pred iddhQDJ8gs6R989NwPS_prop2 {
	
	always all s: Signal | eventually Signal = Green
}
pred __repair { iddhQDJ8gs6R989NwPS_prop2 }
check __repair { iddhQDJ8gs6R989NwPS_prop2 <=> prop2o }