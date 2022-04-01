open main
pred idn5itEYXMXrJ5voMjP_prop5 {
	all f:File | eventually (f not in File)
}
pred __repair { idn5itEYXMXrJ5voMjP_prop5 }
check __repair { idn5itEYXMXrJ5voMjP_prop5 <=> prop5o }