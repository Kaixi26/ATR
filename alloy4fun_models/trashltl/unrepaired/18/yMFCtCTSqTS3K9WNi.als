open main
pred idyMFCtCTSqTS3K9WNi_prop19 {
	always (all f:Protected | f in Trash releases f in Protected and eventually f in Trash)
}
pred __repair { idyMFCtCTSqTS3K9WNi_prop19 }
check __repair { idyMFCtCTSqTS3K9WNi_prop19 <=> prop19o }