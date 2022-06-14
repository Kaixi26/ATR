open main
pred idtFiZtXRfw2eSwWYBN_prop5 {
	
	always( all t:Train | some t.pos :> Exit implies eventually (no t.pos) )
	always( all t:Train | some t.pos :> (Track-Exit) implies eventually (t.pos in t.pos.prox) )
}
pred __repair { idtFiZtXRfw2eSwWYBN_prop5 }
check __repair { idtFiZtXRfw2eSwWYBN_prop5 <=> prop5o }