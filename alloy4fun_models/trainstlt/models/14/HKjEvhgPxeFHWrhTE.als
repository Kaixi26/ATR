open main
pred idHKjEvhgPxeFHWrhTE_prop15 {
	
	eventually always (some t: Train| t.pos != t.pos')
}
pred __repair { idHKjEvhgPxeFHWrhTE_prop15 }
check __repair { idHKjEvhgPxeFHWrhTE_prop15 <=> prop15o }