open main
pred idMgpYRNzAWAJFQx4NA_prop18 {
	always all f : Protected | f not in Protected since f in Trash
}
pred __repair { idMgpYRNzAWAJFQx4NA_prop18 }
check __repair { idMgpYRNzAWAJFQx4NA_prop18 <=> prop18o }