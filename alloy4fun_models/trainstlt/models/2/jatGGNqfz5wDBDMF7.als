open main
pred idjatGGNqfz5wDBDMF7_prop3 {
	
	all t : Train | always no Green & t.pos.signal
}
pred __repair { idjatGGNqfz5wDBDMF7_prop3 }
check __repair { idjatGGNqfz5wDBDMF7_prop3 <=> prop3o }