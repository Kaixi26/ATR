module Main

var sig File {
	var link : lone File
}
var sig Trash in File {}
var sig Protected in File {}

pred prop1o {
	no Trash + Protected
}

pred prop2o {
	no File
  	some File'
}

pred prop3o {
	always some File
}

pred prop4o {
	eventually some Trash
}

pred prop5o {
	eventually some f:File | f not in File'
}

pred prop6o {
	always all f:Trash | always f in Trash
}

pred prop7o {
	eventually some Protected
}

pred prop8o {
	always all l : link.File | eventually l in Trash
}

pred prop9o {
	always no Protected & Trash
}

pred prop10o {
	always Protected' = Protected
}

pred prop11o {
	always all f: File | f not in Protected implies f in Protected'
}

pred prop12o {
	eventually some f : File | always f in Trash
}

pred prop13o {
	always all f : Trash | once f not in Trash
}

pred prop14o {
	always all f : Protected | f in Trash implies after f not in Protected
}

pred prop15o {
	always all f : File | eventually f in Trash
}

pred prop16o {
	always all f : Protected | historically f in Protected
}

pred prop17o {
	always all f : Trash | f not in File'
}

pred prop18o {
	always all f : Protected | f not in Protected' implies f in Trash
}

pred prop19o {
	always all f : Protected | f in Protected until f in Trash
}

pred prop20o {
	always all f:Trash | f in Trash since f not in Protected
}
