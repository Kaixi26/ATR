open main
pred idAHQWgfyRCv75CbNNs_prop10 {
	(all f:File | f in Protected implies( always f in Protected))
}
pred __repair { idAHQWgfyRCv75CbNNs_prop10 }
check __repair { idAHQWgfyRCv75CbNNs_prop10 <=> prop10o }