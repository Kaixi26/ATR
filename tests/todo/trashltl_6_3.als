/*
	6 cases
	2x Add Unary Operator
	Replace Binary Operator (since -> implies)
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop6 {
	all f : File | f in Trash since f in Trash
}

pred prop6Ok {
	always all f : File |  (f in Trash implies always f in Trash)
}

pred __repair {
	prop6
}

check __repair {
	prop6 <=> prop6Ok
}
