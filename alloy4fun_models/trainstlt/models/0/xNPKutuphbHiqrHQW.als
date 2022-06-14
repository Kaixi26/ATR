open main
pred idxNPKutuphbHiqrHQW_prop1 {
	
	always (all t:Entry | Green not in signal.t)
}
pred __repair { idxNPKutuphbHiqrHQW_prop1 }
check __repair { idxNPKutuphbHiqrHQW_prop1 <=> prop1o }