open main
pred idYeMGkZWbb7XtzcWST_prop12 {
	
  	some f:File | f not in Trash implies f in Trash since f in Trash
}
pred __repair { idYeMGkZWbb7XtzcWST_prop12 }
check __repair { idYeMGkZWbb7XtzcWST_prop12 <=> prop12o }