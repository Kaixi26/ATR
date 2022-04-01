open main
pred idiiRMTNBjJfNNXgHP2_prop20 {
	always all f : File | f not in Protected triggered f in Trash 
}
pred __repair { idiiRMTNBjJfNNXgHP2_prop20 }
check __repair { idiiRMTNBjJfNNXgHP2_prop20 <=> prop20o }