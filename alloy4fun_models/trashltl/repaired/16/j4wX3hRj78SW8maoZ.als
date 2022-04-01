open main
pred idj4wX3hRj78SW8maoZ_prop17 {
	always all f:File | f not in Trash and eventually f in Trash implies after f not in File''
}
pred __repair { idj4wX3hRj78SW8maoZ_prop17 }
check __repair { idj4wX3hRj78SW8maoZ_prop17 <=> prop17o }