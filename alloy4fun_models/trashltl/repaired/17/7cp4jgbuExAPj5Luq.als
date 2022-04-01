open main
pred id7cp4jgbuExAPj5Luq_prop18 {
	always(all f:Protected | f not in Protected since f in Trash)
}
pred __repair { id7cp4jgbuExAPj5Luq_prop18 }
check __repair { id7cp4jgbuExAPj5Luq_prop18 <=> prop18o }