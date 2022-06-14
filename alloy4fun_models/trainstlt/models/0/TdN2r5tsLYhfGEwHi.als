open main
pred idTdN2r5tsLYhfGEwHi_prop1 {
	
	once (all t:Track&Entry | Green not in t.signal)
}
pred __repair { idTdN2r5tsLYhfGEwHi_prop1 }
check __repair { idTdN2r5tsLYhfGEwHi_prop1 <=> prop1o }