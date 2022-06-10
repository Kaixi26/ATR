open main
pred id76NvjtSz4DSnBeWg5_prop18 {
	always all p : Protected | p in Protected until (p in Trash or p not in Protected)
}
pred __repair { id76NvjtSz4DSnBeWg5_prop18 }
check __repair { id76NvjtSz4DSnBeWg5_prop18 <=> prop18o }