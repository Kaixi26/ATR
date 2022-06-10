open main
pred idWjz5cbEi6YasADyfm_prop10 {
	(all f:File&Protected | always f in Protected)
}
pred __repair { idWjz5cbEi6YasADyfm_prop10 }
check __repair { idWjz5cbEi6YasADyfm_prop10 <=> prop10o }