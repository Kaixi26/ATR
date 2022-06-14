open main
pred idBR7gNNH5fJM7PFu7p_prop1 {
	
	 (all f:Track | f.signal = Green) until (some t:Track | Green not in t.signal)
}
pred __repair { idBR7gNNH5fJM7PFu7p_prop1 }
check __repair { idBR7gNNH5fJM7PFu7p_prop1 <=> prop1o }