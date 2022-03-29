/*
	6 cases
	(File ...) -> (all f : File | f ...) ? 
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop15 {
	eventually File in Trash
}

pred prop15Ok {
	always all f:File | eventually f in Trash
}

pred __repair {
	prop15
}

check __repair {
	prop15 <=> prop15Ok
}
