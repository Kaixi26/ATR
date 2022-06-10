open main
pred idS99Ps5QptDBwSvBMg_prop16 {
	all f : (File & Protected) | historically (f in Protected)
}
pred __repair { idS99Ps5QptDBwSvBMg_prop16 }
check __repair { idS99Ps5QptDBwSvBMg_prop16 <=> prop16o }