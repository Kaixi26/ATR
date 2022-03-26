/*
	9 cases
	if R : A -> A, R.x valid model <=> x.R valid model
	File.link -> link.File
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop7 {
	always all f:File.link | eventually f in Trash
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
