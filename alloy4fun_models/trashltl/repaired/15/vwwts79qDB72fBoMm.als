open main
pred idvwwts79qDB72fBoMm_prop16 {
	all f: File | always (f in Protected implies historically f in Protected)
}
pred __repair { idvwwts79qDB72fBoMm_prop16 }
check __repair { idvwwts79qDB72fBoMm_prop16 <=> prop16o }