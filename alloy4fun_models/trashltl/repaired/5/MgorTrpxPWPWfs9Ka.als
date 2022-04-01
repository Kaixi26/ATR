open main
pred idMgorTrpxPWPWfs9Ka_prop6 {
	some f:File | once f in Trash implies always f in Trash 
}
pred __repair { idMgorTrpxPWPWfs9Ka_prop6 }
check __repair { idMgorTrpxPWPWfs9Ka_prop6 <=> prop6o }