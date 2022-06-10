open main
pred idKdx5Fqxs7E3jNSop9_prop18 {
	always(all f:File&Protected | f in Trash implies always f not in Protected) 
}
pred __repair { idKdx5Fqxs7E3jNSop9_prop18 }
check __repair { idKdx5Fqxs7E3jNSop9_prop18 <=> prop18o }