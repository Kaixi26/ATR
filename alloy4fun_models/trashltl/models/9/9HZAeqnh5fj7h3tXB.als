open main
pred id9HZAeqnh5fj7h3tXB_prop10 {
	always(all f:File | f in Protected implies( always f in Protected))
}
pred __repair { id9HZAeqnh5fj7h3tXB_prop10 }
check __repair { id9HZAeqnh5fj7h3tXB_prop10 <=> prop10o }