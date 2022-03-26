/*
	10 cases
	Add Binary Operator
	Requires synthesis
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop1 {
	no File
}

pred prop1Ok {
	no File after some File
}

pred __repair {
	prop1
}

check __repair {
	prop1 <=> prop1Ok
}
