open main
pred idnjc2jA43rLybwHZqq_prop10 {
	always(all p: Protected | always p in Protected)
}
pred __repair { idnjc2jA43rLybwHZqq_prop10 }
check __repair { idnjc2jA43rLybwHZqq_prop10 <=> prop10o }