/*
	2 cases
	Remove Unary Operator
	Add 'no Protected'
	Requires synthesis
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop1 {
	before no Trash
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
