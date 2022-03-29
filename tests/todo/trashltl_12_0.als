/*
	6 cases
	2x Replace Unary Operator ('always' <-> 'eventually')
	Replace Quantifier ('all' -> 'some')
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop11 {
	always all f:File | eventually f in Trash
}

pred prop11Ok {
	eventually some f : File | always f in Trash
}

pred __repair {
	prop11
}

check __repair {
	prop11 <=> prop11Ok
}
