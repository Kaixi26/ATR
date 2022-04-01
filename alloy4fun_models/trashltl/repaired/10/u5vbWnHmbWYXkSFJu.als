open main
pred idu5vbWnHmbWYXkSFJu_prop11 {
	all a : File | (a not in Protected) implies  after (a in Protected) 
}
pred __repair { idu5vbWnHmbWYXkSFJu_prop11 }
check __repair { idu5vbWnHmbWYXkSFJu_prop11 <=> prop11o }