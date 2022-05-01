open main
pred ideP3GJ7mZdS7LQYv3b_prop8 {
	eventually (all f1,f2 : File | f1 -> f2 in link implies f1 in Trash) 
}
pred __repair { ideP3GJ7mZdS7LQYv3b_prop8 }
check __repair { ideP3GJ7mZdS7LQYv3b_prop8 <=> prop8o }