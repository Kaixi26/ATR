open main
pred idAxxguuqojH2SbicrZ_prop6 {
	
	all t : Track | always ((some t.signal) implies (t.signal != t.signal'))
}
pred __repair { idAxxguuqojH2SbicrZ_prop6 }
check __repair { idAxxguuqojH2SbicrZ_prop6 <=> prop6o }