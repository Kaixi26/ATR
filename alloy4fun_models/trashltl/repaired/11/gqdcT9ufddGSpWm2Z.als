open main
pred idgqdcT9ufddGSpWm2Z_prop12 {
	some f:File | f not in Trash implies eventually always f in Trash
}
pred __repair { idgqdcT9ufddGSpWm2Z_prop12 }
check __repair { idgqdcT9ufddGSpWm2Z_prop12 <=> prop12o }