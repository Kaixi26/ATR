open main
pred idPPfTqQTouo8q76jSi_prop7 {
	
	all t:Train | some (t.pos & Entry ) implies eventually some (t.pos & Exit) 
}
pred __repair { idPPfTqQTouo8q76jSi_prop7 }
check __repair { idPPfTqQTouo8q76jSi_prop7 <=> prop7o }