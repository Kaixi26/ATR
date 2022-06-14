open main
pred idkZtKsSgR4cKuwhSQN_prop5 {
	
  
  always (all t:Train|(one t.pos:> Exit => no t.pos')  or (one t.pos  => t.pos' in t.pos.prox  ) )
  
  
 
}
pred __repair { idkZtKsSgR4cKuwhSQN_prop5 }
check __repair { idkZtKsSgR4cKuwhSQN_prop5 <=> prop5o }