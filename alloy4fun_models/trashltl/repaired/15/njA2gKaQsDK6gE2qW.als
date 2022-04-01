open main
pred idnjA2gKaQsDK6gE2qW_prop16 {
	always all f : File | f in Protected implies once f in Protected
}
pred __repair { idnjA2gKaQsDK6gE2qW_prop16 }
check __repair { idnjA2gKaQsDK6gE2qW_prop16 <=> prop16o }