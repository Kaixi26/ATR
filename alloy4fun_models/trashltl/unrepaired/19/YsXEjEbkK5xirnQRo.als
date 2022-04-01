open main
pred idYsXEjEbkK5xirnQRo_prop20 {
	always (all f:Trash | f not in Protected triggered f in Trash)
}
pred __repair { idYsXEjEbkK5xirnQRo_prop20 }
check __repair { idYsXEjEbkK5xirnQRo_prop20 <=> prop20o }