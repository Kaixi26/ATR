open main
pred idzeWWzGskAsEi9C82Y_prop19 {
	all f : Protected | (f in Trash and f not in Protected) until f in Protected
}
pred __repair { idzeWWzGskAsEi9C82Y_prop19 }
check __repair { idzeWWzGskAsEi9C82Y_prop19 <=> prop19o }