open main
pred id3586RekanmPZENGuQ_prop18 {
	always all p : Protected | always p not in Protected => once p in Trash
}
pred __repair { id3586RekanmPZENGuQ_prop18 }
check __repair { id3586RekanmPZENGuQ_prop18 <=> prop18o }