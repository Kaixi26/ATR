/*
	15 cases
	Add Unary Operator 'historically'
	Replace Binary Operator ('implies' -> 'and')
	Stronger Type
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop10 {
	always all f:File | f in Protected implies always f in Protected
}

pred prop10Ok {
	always all p : Protected | historically p in Protected and always p in Protected
}

pred __repair {
	prop10
}

check __repair {
	prop10 <=> prop10Ok
}
