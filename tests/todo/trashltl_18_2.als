/*
	4 cases
	Add Unary Operator
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop18 {
	always (all f : Protected | f not in Protected implies f in Trash)
}

pred prop18Ok {
	always (all f : Protected | f not in Protected' implies f in Trash)
}

pred __repair {
	prop18
}

check __repair {
	prop18 <=> prop18Ok
}
