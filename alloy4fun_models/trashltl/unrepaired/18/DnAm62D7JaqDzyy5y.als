open main
pred idDnAm62D7JaqDzyy5y_prop19 {
	all f : File | f in Protected until f in Trash
}
pred __repair { idDnAm62D7JaqDzyy5y_prop19 }
check __repair { idDnAm62D7JaqDzyy5y_prop19 <=> prop19o }