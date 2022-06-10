open main
pred idLGBoxX6esLX42A4b3_prop6 {
 	always all f:File | always f in Trash implies always f in Trash'
}
pred __repair { idLGBoxX6esLX42A4b3_prop6 }
check __repair { idLGBoxX6esLX42A4b3_prop6 <=> prop6o }