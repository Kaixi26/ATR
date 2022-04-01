open main
pred idMdaCtchyN2zqWjz9y_prop13 {
	always all f : File | (f in Trash) releases (f not in Trash)
}
pred __repair { idMdaCtchyN2zqWjz9y_prop13 }
check __repair { idMdaCtchyN2zqWjz9y_prop13 <=> prop13o }