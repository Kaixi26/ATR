/*
	34 cases
	Remove Unary Operator
	Add Unary Operator
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop4 {
	some f : File | eventually (f in Trash)
}

pred prop4Ok {
	eventually ( some f : File | ( f in Trash ))
}

pred __repair {
	prop4
}

check __repair {
	prop4 <=> prop4Ok
}
