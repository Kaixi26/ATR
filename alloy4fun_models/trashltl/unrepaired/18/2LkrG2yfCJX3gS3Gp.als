open main
pred id2LkrG2yfCJX3gS3Gp_prop19 {
	all f : Protected | (f in Trash and f in Protected) until f not in Protected
}
pred __repair { id2LkrG2yfCJX3gS3Gp_prop19 }
check __repair { id2LkrG2yfCJX3gS3Gp_prop19 <=> prop19o }