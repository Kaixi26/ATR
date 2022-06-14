open main
pred idJev2MHiuTmPue7ezf_prop1 {
	
	always (all t:Track | Green in t.signal since Green not in t.signal)
}
pred __repair { idJev2MHiuTmPue7ezf_prop1 }
check __repair { idJev2MHiuTmPue7ezf_prop1 <=> prop1o }