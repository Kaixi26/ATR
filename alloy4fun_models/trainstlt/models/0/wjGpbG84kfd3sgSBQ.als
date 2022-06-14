open main
pred idwjGpbG84kfd3sgSBQ_prop1 {
	
	always (all t:Track | Green not in t.signal until Green in t.signal)
}
pred __repair { idwjGpbG84kfd3sgSBQ_prop1 }
check __repair { idwjGpbG84kfd3sgSBQ_prop1 <=> prop1o }