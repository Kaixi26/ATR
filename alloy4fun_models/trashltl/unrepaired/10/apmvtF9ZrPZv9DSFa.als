open main
pred idapmvtF9ZrPZv9DSFa_prop11 {
	all f:File' | f in Protected
}
pred __repair { idapmvtF9ZrPZv9DSFa_prop11 }
check __repair { idapmvtF9ZrPZv9DSFa_prop11 <=> prop11o }