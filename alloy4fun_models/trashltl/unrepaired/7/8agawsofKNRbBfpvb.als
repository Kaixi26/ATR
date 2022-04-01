open main
pred id8agawsofKNRbBfpvb_prop8 {
   ( all f1,f2 : File | f1->f2 in link implies f2 in Trash )
  
}
pred __repair { id8agawsofKNRbBfpvb_prop8 }
check __repair { id8agawsofKNRbBfpvb_prop8 <=> prop8o }