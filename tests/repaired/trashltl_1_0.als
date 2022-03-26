/*
	2 cases
	Remove Unary Operator
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop1 {
	before (no Trash and no Protected)
}

pred prop1Ok {
	no Trash and no Protected
}

pred __repair {
	prop1
}

check __repair {
	prop1 <=> prop1Ok
}
