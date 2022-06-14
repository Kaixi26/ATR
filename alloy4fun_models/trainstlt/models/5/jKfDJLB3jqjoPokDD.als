open main
pred idjKfDJLB3jqjoPokDD_prop6 {
	
	always (all s:Signal | (s in Green implies s not in Green') or (s not in Green implies s in Green'))
}
pred __repair { idjKfDJLB3jqjoPokDD_prop6 }
check __repair { idjKfDJLB3jqjoPokDD_prop6 <=> prop6o }