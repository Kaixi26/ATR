/*
	Add Unary Operator
	Replace Quantifier
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop12 {
	all f : File | eventually always f in Trash
}

pred prop12Ok {
	eventually (some f : File | eventually always f in Trash)
}

pred __repair {
	prop12
}

check __repair {
	prop12 <=> prop12Ok
}
