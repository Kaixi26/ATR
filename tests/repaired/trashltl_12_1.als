/*
	8 cases
	Replace Binary Operator
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop12 {
	eventually some f:File | f in Trash implies always f in Trash
}

pred prop12Ok {
	eventually some f:File | f in Trash releases always f in Trash
}

pred __repair {
	prop12
}

check __repair {
	prop12 <=> prop12Ok
}
