open main
pred id3T74crP7S2F3zdu7e_prop5 {
	
	all t:Train {
		some (t.pos & Exit) => t.pos' = (t.pos) - (t.pos)
      
  	} 
}
pred __repair { id3T74crP7S2F3zdu7e_prop5 }
check __repair { id3T74crP7S2F3zdu7e_prop5 <=> prop5o }