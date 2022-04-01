open main
pred idD8mWBbB2FuLBuFPuA_prop12 {
	eventually always all f:File | f not in Trash implies f in Trash'
}
pred __repair { idD8mWBbB2FuLBuFPuA_prop12 }
check __repair { idD8mWBbB2FuLBuFPuA_prop12 <=> prop12o }