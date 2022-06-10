open main
pred idiZi9niCoirTSutdiG_prop16 {
	all p:Protected | historically p in Protected
}
pred __repair { idiZi9niCoirTSutdiG_prop16 }
check __repair { idiZi9niCoirTSutdiG_prop16 <=> prop16o }