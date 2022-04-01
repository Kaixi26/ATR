open main
pred idSdRLo2fQGPsnm6DnN_prop16 {
	 all f:File | f in Protected implies always (historically f in   Protected)
}
pred __repair { idSdRLo2fQGPsnm6DnN_prop16 }
check __repair { idSdRLo2fQGPsnm6DnN_prop16 <=> prop16o }