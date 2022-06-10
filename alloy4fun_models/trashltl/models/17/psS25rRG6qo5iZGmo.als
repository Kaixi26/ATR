open main
pred idpsS25rRG6qo5iZGmo_prop18 {
	all p: Protected | p not in Protected implies before p in Trash
}
pred __repair { idpsS25rRG6qo5iZGmo_prop18 }
check __repair { idpsS25rRG6qo5iZGmo_prop18 <=> prop18o }