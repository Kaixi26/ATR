open main
pred id4g5BodhQQs2J26z8q_prop8 {

  always all f,g:File | some f.link implies eventually  f.link in Trash
  
}
pred __repair { id4g5BodhQQs2J26z8q_prop8 }
check __repair { id4g5BodhQQs2J26z8q_prop8 <=> prop8o }