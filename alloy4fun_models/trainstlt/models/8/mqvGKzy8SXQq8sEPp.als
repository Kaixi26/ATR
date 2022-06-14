open main
pred idmqvGKzy8SXQq8sEPp_prop9 {
	
	 (all t:Train |no t.pos implies  eventually ( some t.pos and t.pos in Entry) )
}
pred __repair { idmqvGKzy8SXQq8sEPp_prop9 }
check __repair { idmqvGKzy8SXQq8sEPp_prop9 <=> prop9o }