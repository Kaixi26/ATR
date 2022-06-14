open main
pred idQhz6txHc6aRc4qdpk_prop3 {
	
  always all t: Train | t in t.pos implies after t in t.pos
}
pred __repair { idQhz6txHc6aRc4qdpk_prop3 }
check __repair { idQhz6txHc6aRc4qdpk_prop3 <=> prop3o }