open main
pred idxSqXsEjXCKxw7BBMY_prop9 {
	always all f:Protected | always f not in Trash 
}
pred __repair { idxSqXsEjXCKxw7BBMY_prop9 }
check __repair { idxSqXsEjXCKxw7BBMY_prop9 <=> prop9o }