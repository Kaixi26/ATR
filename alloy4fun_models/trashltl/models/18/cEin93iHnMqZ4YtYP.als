open main
pred idcEin93iHnMqZ4YtYP_prop19 {
	eventually (all f:Protected | eventually f not in Protected and f in Trash)
}
pred __repair { idcEin93iHnMqZ4YtYP_prop19 }
check __repair { idcEin93iHnMqZ4YtYP_prop19 <=> prop19o }