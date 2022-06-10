open main
pred idNNrToj8jxSPEX9jFE_prop8 {
	all f1,f2:File | f1->f2 in link implies eventually f1 in Trash
}
pred __repair { idNNrToj8jxSPEX9jFE_prop8 }
check __repair { idNNrToj8jxSPEX9jFE_prop8 <=> prop8o }