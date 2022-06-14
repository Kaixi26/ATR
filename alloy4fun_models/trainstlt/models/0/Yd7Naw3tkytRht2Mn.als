open main
pred idYd7Naw3tkytRht2Mn_prop1 {
	
	 (all t:Track | Green in t.signal since Green not in t.signal)
}
pred __repair { idYd7Naw3tkytRht2Mn_prop1 }
check __repair { idYd7Naw3tkytRht2Mn_prop1 <=> prop1o }