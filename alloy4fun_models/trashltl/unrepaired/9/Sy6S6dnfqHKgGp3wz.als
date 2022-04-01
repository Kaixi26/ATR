open main
pred idSy6S6dnfqHKgGp3wz_prop10 {
	always (all f:Protected | f in Protected)
}
pred __repair { idSy6S6dnfqHKgGp3wz_prop10 }
check __repair { idSy6S6dnfqHKgGp3wz_prop10 <=> prop10o }