open main
pred id3w2MHeN3wNFKGY44h_prop10 {
  
  always all f:File | f in Protected implies f in Protected
}
pred __repair { id3w2MHeN3wNFKGY44h_prop10 }
check __repair { id3w2MHeN3wNFKGY44h_prop10 <=> prop10o }