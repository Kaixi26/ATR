open main
pred idDqgEuWcP3xvwoN9Dt_prop11 {
	all f:File | f in File-Protected implies after f in Protected
}
pred __repair { idDqgEuWcP3xvwoN9Dt_prop11 }
check __repair { idDqgEuWcP3xvwoN9Dt_prop11 <=> prop11o }