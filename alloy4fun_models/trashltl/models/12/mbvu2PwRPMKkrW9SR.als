open main
pred idmbvu2PwRPMKkrW9SR_prop13 {
	always all f:File | f in Trash implies once f in File-Trash
}
pred __repair { idmbvu2PwRPMKkrW9SR_prop13 }
check __repair { idmbvu2PwRPMKkrW9SR_prop13 <=> prop13o }