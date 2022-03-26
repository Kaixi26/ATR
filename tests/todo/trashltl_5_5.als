/*
	9 cases
	Add Unary Operator
	Replace Binary Operator ('=' -> 'not in')
	Remove Unary Operator (`'` -> ``)
	Stronger Type (File -> f) (synthesis?)
	Weaker Type (File - f) -> File
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop5 {
	some f : File | eventually File' = File - f
}

pred prop5Ok {
	eventually some f : File | eventually f not in File
}

pred __repair {
	prop5
}

check __repair {
	prop5 <=> prop5Ok
}
