open main
pred idv3cYnXtvbqpw2LeJf_prop10 {
	always (all f:Protected | f in Protected)
}
pred __repair { idv3cYnXtvbqpw2LeJf_prop10 }
check __repair { idv3cYnXtvbqpw2LeJf_prop10 <=> prop10o }