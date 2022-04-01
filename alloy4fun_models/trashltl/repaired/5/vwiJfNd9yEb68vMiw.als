open main
pred idvwiJfNd9yEb68vMiw_prop6 {
	all f : File | always f in Trash implies always f in Trash'
}
pred __repair { idvwiJfNd9yEb68vMiw_prop6 }
check __repair { idvwiJfNd9yEb68vMiw_prop6 <=> prop6o }