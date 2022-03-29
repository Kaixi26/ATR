/*
	5 cases
	Add Unary Operator
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop11 {
	all f : File - Protected | after f in Protected
}

pred prop11Ok {
	always all f : File - Protected | after f in Protected
}

pred __repair {
	prop11
}

check __repair {
	prop11 <=> prop11Ok
}
