open main
pred idynzk7yhjkqEnGBSAc_prop6 {
	all f:File | always f in Trash releases f in Trash
}
pred __repair { idynzk7yhjkqEnGBSAc_prop6 }
check __repair { idynzk7yhjkqEnGBSAc_prop6 <=> prop6o }