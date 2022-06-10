open main
pred id7Px3vRynWsYzL75RB_prop10 {
	all f : Protected | always f in Protected and f not in Trash
}
pred __repair { id7Px3vRynWsYzL75RB_prop10 }
check __repair { id7Px3vRynWsYzL75RB_prop10 <=> prop10o }