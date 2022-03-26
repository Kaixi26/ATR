/*
	9 cases
	Add Unary operator
*/

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop7 {
	all f1,f2 : File | f1->f2 in link implies eventually f2 in Trash
}

pred prop7Ok {
	always all f1,f2:File | f1->f2 in link implies eventually f1 in Trash

}

pred __repair {
	prop7
}

check __repair {
	prop7 <=> prop7Ok
}
