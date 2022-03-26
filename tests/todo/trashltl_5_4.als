/*
	11 cases
	Add Unary Operator
	Replace Binary Operator
	Weaker Type (synthesis?)
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop5 {
	eventually (some f:File | f in Trash)
}

pred prop5Ok {
	eventually (some f:File | f not in File')
}

pred __repair {
	prop5
}

check __repair {
	prop5 <=> prop5Ok
}
