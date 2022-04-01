open main
pred id6edvcNEDWaiKJXxnb_prop8 {
	always all f:File | some f.link implies always eventually f.link in Trash 
}
pred __repair { id6edvcNEDWaiKJXxnb_prop8 }
check __repair { id6edvcNEDWaiKJXxnb_prop8 <=> prop8o }