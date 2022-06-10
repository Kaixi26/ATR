open main
pred idmG3XehCNSHiWT3qzy_prop18 {
	always(all f:Protected | always (f in Trash implies f not in Protected))
}
pred __repair { idmG3XehCNSHiWT3qzy_prop18 }
check __repair { idmG3XehCNSHiWT3qzy_prop18 <=> prop18o }