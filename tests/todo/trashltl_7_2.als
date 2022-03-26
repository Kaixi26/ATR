/*
	7 cases
	Add Unary Operator
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop7 {
	some f : File | eventually f in Protected
}

pred prop7Ok {
	eventually (some f : File |  f in Protected)
}

pred __repair {
	prop7
}

check __repair {
	prop7 <=> prop7Ok
}
