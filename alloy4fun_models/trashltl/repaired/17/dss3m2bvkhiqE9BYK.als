open main
pred iddss3m2bvkhiqE9BYK_prop18 {
	always all f : Protected | f in Trash => f not in Protected'
}
pred __repair { iddss3m2bvkhiqE9BYK_prop18 }
check __repair { iddss3m2bvkhiqE9BYK_prop18 <=> prop18o }