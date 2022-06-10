open main
pred iddmZT98uFXf3kDqpJS_prop20 {
	always all f : File | f not in Protected until f in Trash 
}
pred __repair { iddmZT98uFXf3kDqpJS_prop20 }
check __repair { iddmZT98uFXf3kDqpJS_prop20 <=> prop20o }