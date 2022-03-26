/*
	6 cases
	Add Unary Operator
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop3 {
	some File
}

pred prop3Ok {
	always some File
}

pred __repair {
	prop3
}

check __repair {
	prop3 <=> prop3Ok
}
