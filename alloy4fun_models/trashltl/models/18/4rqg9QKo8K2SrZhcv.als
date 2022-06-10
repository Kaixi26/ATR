open main
pred id4rqg9QKo8K2SrZhcv_prop19 {
	all f : Protected | eventually f not in Trash until f in Trash 
}
pred __repair { id4rqg9QKo8K2SrZhcv_prop19 }
check __repair { id4rqg9QKo8K2SrZhcv_prop19 <=> prop19o }