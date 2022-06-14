open main
pred idTov3hjsvHDgpzP24D_prop5 {
	
	always(
		all t:Train {
        	some (t.pos & Exit) => no t.pos'
          	some (t.pos & (Track-Exit)) => some tk2: t.pos | t.pos' = tk2
  		} 
   	)
}
pred __repair { idTov3hjsvHDgpzP24D_prop5 }
check __repair { idTov3hjsvHDgpzP24D_prop5 <=> prop5o }