open main
pred id5TD9Rv6YDtgX3oy7R_prop10 {
	always (all f:File | always(after f in Protected))
}
pred __repair { id5TD9Rv6YDtgX3oy7R_prop10 }
check __repair { id5TD9Rv6YDtgX3oy7R_prop10 <=> prop10o }