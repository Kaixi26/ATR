open main
pred idKQbLKEKGEAZZFPg8t_prop1 {
	
	always (all t:Entry | Green not in t.signal)
}
pred __repair { idKQbLKEKGEAZZFPg8t_prop1 }
check __repair { idKQbLKEKGEAZZFPg8t_prop1 <=> prop1o }