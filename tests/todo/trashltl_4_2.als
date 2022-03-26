/*
	7 cases
	Complex mutation (?)
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop4 {
	eventually File in Trash
}

pred prop4Ok {
	eventually (some Trash)
}

pred __repair {
	prop4
}

check __repair {
	prop4 <=> prop4Ok
}
