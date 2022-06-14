open main
pred idck6S59KCGwnXxwWCw_prop11 {
	
	always ( all t:Train| some t.pos implies  once t.pos in Entry) 
}
pred __repair { idck6S59KCGwnXxwWCw_prop11 }
check __repair { idck6S59KCGwnXxwWCw_prop11 <=> prop11o }