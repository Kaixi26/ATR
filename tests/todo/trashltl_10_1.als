/*
	17 cases
	Replace Binary Operator
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop10 {
	always Protected in Protected'
}

pred prop10Ok {
	always Protected' = Protected
}

pred __repair {
	prop10
}

check __repair {
	prop10 <=> prop10Ok
}
