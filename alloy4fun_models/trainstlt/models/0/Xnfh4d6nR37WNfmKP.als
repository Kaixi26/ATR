open main
pred idXnfh4d6nR37WNfmKP_prop1 {
	
	(all t:Track | Green not in t.signal until (Green in t.signal))
}
pred __repair { idXnfh4d6nR37WNfmKP_prop1 }
check __repair { idXnfh4d6nR37WNfmKP_prop1 <=> prop1o }