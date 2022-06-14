open main
pred id4DPiwEdZaZ9GBMvqA_prop1 {
	
	once (all t:Entry | Green not in t.signal)
}
pred __repair { id4DPiwEdZaZ9GBMvqA_prop1 }
check __repair { id4DPiwEdZaZ9GBMvqA_prop1 <=> prop1o }