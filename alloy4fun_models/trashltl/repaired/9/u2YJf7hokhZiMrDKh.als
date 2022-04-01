open main
pred idu2YJf7hokhZiMrDKh_prop10 {
	always all f:File | f in Protected implies always f in Protected'
}
pred __repair { idu2YJf7hokhZiMrDKh_prop10 }
check __repair { idu2YJf7hokhZiMrDKh_prop10 <=> prop10o }