/*
	7 cases
	Add Unary Operator
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop17 {
	all f:File | f in Protected implies (historically f in Protected)
}

pred prop17Ok {
	always (all f:File | f in Protected implies (historically f in Protected))
}

pred __repair {
	prop17
}

check __repair {
	prop17 <=> prop17Ok
}
