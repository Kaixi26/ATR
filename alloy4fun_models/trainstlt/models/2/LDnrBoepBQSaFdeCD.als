open main
pred idLDnrBoepBQSaFdeCD_prop3 {
	
  always all t : Train | lone t.pos 
}
pred __repair { idLDnrBoepBQSaFdeCD_prop3 }
check __repair { idLDnrBoepBQSaFdeCD_prop3 <=> prop3o }