open main
pred idhEWd5n24fEkr9RtSx_prop10 {
	always (all f:Protected | f in Protected')
}
pred __repair { idhEWd5n24fEkr9RtSx_prop10 }
check __repair { idhEWd5n24fEkr9RtSx_prop10 <=> prop10o }