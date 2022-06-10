open main
pred idbgg4Brm2DHTRhkC4Q_prop5 {
	some f:File | eventually File' = File-f
}
pred __repair { idbgg4Brm2DHTRhkC4Q_prop5 }
check __repair { idbgg4Brm2DHTRhkC4Q_prop5 <=> prop5o }