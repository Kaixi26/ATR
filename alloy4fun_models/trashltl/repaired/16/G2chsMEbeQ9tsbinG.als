open main
pred idG2chsMEbeQ9tsbinG_prop17 {
	all f:File | f in Trash implies after f not in File'
}
pred __repair { idG2chsMEbeQ9tsbinG_prop17 }
check __repair { idG2chsMEbeQ9tsbinG_prop17 <=> prop17o }