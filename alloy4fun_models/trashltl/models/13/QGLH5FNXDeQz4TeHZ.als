open main
pred idQGLH5FNXDeQz4TeHZ_prop14 {
	always all f:File | (f in Trash and f in Protected) implies (f in Trash' and f not in Protected')
}
pred __repair { idQGLH5FNXDeQz4TeHZ_prop14 }
check __repair { idQGLH5FNXDeQz4TeHZ_prop14 <=> prop14o }