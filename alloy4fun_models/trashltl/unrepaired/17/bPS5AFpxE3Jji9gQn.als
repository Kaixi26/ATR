open main
pred idbPS5AFpxE3Jji9gQn_prop18 {
	always (all f : File | f in Protected until f in Trash)
}
pred __repair { idbPS5AFpxE3Jji9gQn_prop18 }
check __repair { idbPS5AFpxE3Jji9gQn_prop18 <=> prop18o }