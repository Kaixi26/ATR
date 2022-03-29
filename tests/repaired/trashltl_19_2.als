/*
	7 cases
	Add Unary Operator
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop19 {
	all f : Protected | f in Protected until f in Trash
}

pred prop19Ok {
	always all f:Protected | f in Protected until f in Trash
}

pred __repair {
	prop19
}

check __repair {
	prop19 <=> prop19Ok
}
