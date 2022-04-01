open main
pred idotpwT5rLp8HoNeE6W_prop10 {
	always all f:Protected | always f in Protected
}
pred __repair { idotpwT5rLp8HoNeE6W_prop10 }
check __repair { idotpwT5rLp8HoNeE6W_prop10 <=> prop10o }