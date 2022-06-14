open main
pred idXiT75v2vCFP9Wv4Hi_prop1 {
	
	 (historically Signal = Green) until (some t:Track | Green not in t.signal)
}
pred __repair { idXiT75v2vCFP9Wv4Hi_prop1 }
check __repair { idXiT75v2vCFP9Wv4Hi_prop1 <=> prop1o }