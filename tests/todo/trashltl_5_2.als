/*
	18 cases
	Replace Binary Operator (in -> not in)
	Add Unary Operator
	Weaker Type (Trash -> File) (synthesis?)
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop5 {
	some f : File | eventually f in Trash
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
