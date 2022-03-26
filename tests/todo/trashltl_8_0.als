/*
	23 cases
	Requires sythesis
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop7 {
	eventually (File.link in Trash)
}

pred prop7Ok {
	always all l : link.File | eventually l in Trash
}

pred __repair {
	prop7
}

check __repair {
	prop7 <=> prop7Ok
}
