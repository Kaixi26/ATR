/*
	18 cases
	Strengthen Type (File -> Trash)
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop20 {
	always all f : File |  f in Trash since f not in Protected
}

pred prop20Ok {
	always all f : Trash | f in Trash since f not in Protected
}

pred __repair {
	prop20
}

check __repair {
	prop20 <=> prop20Ok
}
