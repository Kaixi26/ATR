/*
	12 cases
	f.link -> f
	Requires sythesis
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop7 {
	always (all f : File | some f.link implies eventually (f.link in Trash))
}

pred prop7Ok {
	always (all f : File | some f.link implies eventually f in Trash)
}

pred __repair {
	prop7
}

check __repair {
	prop7 <=> prop7Ok
}
