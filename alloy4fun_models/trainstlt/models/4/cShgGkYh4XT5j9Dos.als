open main
pred idcShgGkYh4XT5j9Dos_prop5 {
	
	all t:Train {
      	some tk:t.pos {
        	(tk in Exit) => t.pos' = t.pos - tk
          	(tk not in Exit) => some tk2: tk.prox | t.pos' = tk2
        }
  	} 
}
pred __repair { idcShgGkYh4XT5j9Dos_prop5 }
check __repair { idcShgGkYh4XT5j9Dos_prop5 <=> prop5o }