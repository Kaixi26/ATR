open main
pred idoQ7dH4k3uHJ3yGNWn_prop5 {
	

    all t:Train |{
     	always (t.pos in Exit implies  no t.pos')
      	
    }
  	
}
pred __repair { idoQ7dH4k3uHJ3yGNWn_prop5 }
check __repair { idoQ7dH4k3uHJ3yGNWn_prop5 <=> prop5o }