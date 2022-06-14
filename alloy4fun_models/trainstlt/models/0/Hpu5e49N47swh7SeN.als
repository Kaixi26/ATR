open main
pred idHpu5e49N47swh7SeN_prop1 {
	
	 (Signal = Green) until (some t:Track | Green not in t.signal)
}
pred __repair { idHpu5e49N47swh7SeN_prop1 }
check __repair { idHpu5e49N47swh7SeN_prop1 <=> prop1o }