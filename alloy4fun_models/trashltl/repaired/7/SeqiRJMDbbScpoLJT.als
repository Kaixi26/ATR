open main
pred idSeqiRJMDbbScpoLJT_prop8 {
	 always all f:File | some f.link implies f in Trash
}
pred __repair { idSeqiRJMDbbScpoLJT_prop8 }
check __repair { idSeqiRJMDbbScpoLJT_prop8 <=> prop8o }