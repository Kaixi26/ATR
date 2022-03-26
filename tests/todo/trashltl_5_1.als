/*
	24 cases
	Requires synthesis
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop5 {
	eventually some Trash
}

pred prop5Ok {
	eventually File not in File'
}

pred __repair {
	prop5
}

check __repair {
	prop5 <=> prop5Ok
}
