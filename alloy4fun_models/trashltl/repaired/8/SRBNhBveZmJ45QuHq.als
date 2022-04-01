open main
pred idSRBNhBveZmJ45QuHq_prop9 {
	all f:Protected | always f not in Trash 
}
pred __repair { idSRBNhBveZmJ45QuHq_prop9 }
check __repair { idSRBNhBveZmJ45QuHq_prop9 <=> prop9o }