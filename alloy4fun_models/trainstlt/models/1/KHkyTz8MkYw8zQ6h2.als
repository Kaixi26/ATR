open main
pred idKHkyTz8MkYw8zQ6h2_prop2 {
	
	eventually(all t:Track | t.signal = Green)
}
pred __repair { idKHkyTz8MkYw8zQ6h2_prop2 }
check __repair { idKHkyTz8MkYw8zQ6h2_prop2 <=> prop2o }