/*
	12 cases
	Replace Binary Operator
	Add Unary Operator
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop2 {
	historically no File until some File
}

pred prop2Ok {
	historically no File
	some File'
}

pred __repair {
	prop2
}

check __repair {
	prop2 <=> prop2Ok
}
