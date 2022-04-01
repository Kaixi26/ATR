open main
pred idHNo7XaytNhgfEeyXx_prop10 {
	all f:File | f in Protected  implies always f in Protected
}
pred __repair { idHNo7XaytNhgfEeyXx_prop10 }
check __repair { idHNo7XaytNhgfEeyXx_prop10 <=> prop10o }