open main
pred idk4SbjvZEymGQRo8Rp_prop10 {
	always all p: Protected | p' = p
}
pred __repair { idk4SbjvZEymGQRo8Rp_prop10 }
check __repair { idk4SbjvZEymGQRo8Rp_prop10 <=> prop10o }