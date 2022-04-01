open main
pred idSTGN78Gq75ZN3JKAJ_prop10 {
  always all f : Protected | eventually f in Protected implies always f in Protected 
}
pred __repair { idSTGN78Gq75ZN3JKAJ_prop10 }
check __repair { idSTGN78Gq75ZN3JKAJ_prop10 <=> prop10o }