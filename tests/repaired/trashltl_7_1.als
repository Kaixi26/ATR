/*
	5 cases
	Replace Unary Operator
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop7 {
	always some Protected
}

pred prop7Ok {
	eventually some Protected
}

pred __repair {
	prop7
}

check __repair {
	prop7 <=> prop7Ok
}
