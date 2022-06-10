open main
pred idzECtof3wyMirtKx9Y_prop12 {
	eventually some f : File | after eventually f in Trash => after f not in Trash 
}
pred __repair { idzECtof3wyMirtKx9Y_prop12 }
check __repair { idzECtof3wyMirtKx9Y_prop12 <=> prop12o }