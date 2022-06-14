open main
pred idjKoopXf52HepdoMkk_prop5 {
	
  all t:Train| {
	always (t.pos in Exit  implies no t.pos')
    
  }
}
pred __repair { idjKoopXf52HepdoMkk_prop5 }
check __repair { idjKoopXf52HepdoMkk_prop5 <=> prop5o }