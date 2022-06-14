open main
pred idF3wJw2ffaFpbrhZcF_prop9 {
	
	always ( all t:Train | (no t.pos) until (some t.pos :> Entry) )	
}
pred __repair { idF3wJw2ffaFpbrhZcF_prop9 }
check __repair { idF3wJw2ffaFpbrhZcF_prop9 <=> prop9o }