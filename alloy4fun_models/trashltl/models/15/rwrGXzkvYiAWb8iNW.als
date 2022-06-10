open main
pred idrwrGXzkvYiAWb8iNW_prop16 {
	always ((some Protected) implies (historically some Protected))
}
pred __repair { idrwrGXzkvYiAWb8iNW_prop16 }
check __repair { idrwrGXzkvYiAWb8iNW_prop16 <=> prop16o }