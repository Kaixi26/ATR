open main
pred idXAKBdfDF5PQXRjz9n_prop8 {
	always (all f:File| some f.^link  implies  eventually  f.^link  in Trash)
  	
}
pred __repair { idXAKBdfDF5PQXRjz9n_prop8 }
check __repair { idXAKBdfDF5PQXRjz9n_prop8 <=> prop8o }