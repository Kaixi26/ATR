/*
	6 cases
	Add Unary Operator
	Requires synthesis
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop2 {
	some File
}

pred prop2Ok {
	no File after some File
}

pred __repair {
	prop2
}

check __repair {
	prop2 <=> prop2Ok
}
