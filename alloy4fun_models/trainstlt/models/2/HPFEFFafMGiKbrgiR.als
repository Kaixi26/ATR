open main
pred idHPFEFFafMGiKbrgiR_prop3 {
	
  always ~pos.pos in iden and (always all t : Train | lone t.pos)
}
pred __repair { idHPFEFFafMGiKbrgiR_prop3 }
check __repair { idHPFEFFafMGiKbrgiR_prop3 <=> prop3o }