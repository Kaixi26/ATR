open main
pred idMbffeKxGJdAvhhY5K_prop1 {
	
	always(all t:Track | once(Green not in t.signal))
}
pred __repair { idMbffeKxGJdAvhhY5K_prop1 }
check __repair { idMbffeKxGJdAvhhY5K_prop1 <=> prop1o }