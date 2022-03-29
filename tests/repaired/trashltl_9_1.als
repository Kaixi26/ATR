/*
	9 cases
	Add Unary Operator
	Remove Unary Operator
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop9 {
	all p : Protected | always p not in Trash
}

pred prop9Ok {
	always all p : Protected | p not in Trash
}

pred __repair {
	prop9
}

check __repair {
	prop9 <=> prop9Ok
}
