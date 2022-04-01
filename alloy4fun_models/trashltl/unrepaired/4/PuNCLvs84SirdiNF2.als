open main
pred idPuNCLvs84SirdiNF2_prop5 {
	
  	some f: File | after f in Trash
}
pred __repair { idPuNCLvs84SirdiNF2_prop5 }
check __repair { idPuNCLvs84SirdiNF2_prop5 <=> prop5o }