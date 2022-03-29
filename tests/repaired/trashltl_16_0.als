/*
	9 cases
	Add Unary Operator
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop16 {
	all f : Protected | historically f in Protected
}

pred prop16Ok {
	always (all f : Protected | historically f in Protected)
}

pred __repair {
	prop16
}

check __repair {
	prop16 <=> prop16Ok
}
