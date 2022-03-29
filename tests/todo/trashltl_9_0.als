/*
	9 cases
	Add Unary Operator
	Replace Binary Operator (& -> 'not in')
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop9 {
	always (Protected not in Trash)
}

pred prop9Ok {
	always no Protected & Trash
}

pred __repair {
	prop9
}

check __repair {
	prop9 <=> prop9Ok
}
