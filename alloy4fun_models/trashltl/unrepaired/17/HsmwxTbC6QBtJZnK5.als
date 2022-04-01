open main
pred idHsmwxTbC6QBtJZnK5_prop18 {
	always all f : Protected | eventually f in Trash => always f not in Protected
}
pred __repair { idHsmwxTbC6QBtJZnK5_prop18 }
check __repair { idHsmwxTbC6QBtJZnK5_prop18 <=> prop18o }