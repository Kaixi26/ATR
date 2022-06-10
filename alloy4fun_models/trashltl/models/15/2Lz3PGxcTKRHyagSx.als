open main
pred id2Lz3PGxcTKRHyagSx_prop16 {
	all f : File | eventually f in Protected => historically f in Protected
}
pred __repair { id2Lz3PGxcTKRHyagSx_prop16 }
check __repair { id2Lz3PGxcTKRHyagSx_prop16 <=> prop16o }