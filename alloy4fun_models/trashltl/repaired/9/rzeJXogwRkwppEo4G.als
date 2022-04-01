open main
pred idrzeJXogwRkwppEo4G_prop10 { 
	all f:Protected | always f in Protected
}
pred __repair { idrzeJXogwRkwppEo4G_prop10 }
check __repair { idrzeJXogwRkwppEo4G_prop10 <=> prop10o }