open main
pred ideFLPT2uZmCj9kcC8L_prop10 {
	always (all f:File | f in Protected implies after f in Protected)
}
pred __repair { ideFLPT2uZmCj9kcC8L_prop10 }
check __repair { ideFLPT2uZmCj9kcC8L_prop10 <=> prop10o }