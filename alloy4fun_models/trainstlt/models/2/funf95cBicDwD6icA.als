open main
pred idfunf95cBicDwD6icA_prop3 {
  
  all t : Train | lone t.pos
}
pred __repair { idfunf95cBicDwD6icA_prop3 }
check __repair { idfunf95cBicDwD6icA_prop3 <=> prop3o }