open main
pred iddhZ8DPf47YBj42XdB_prop5 {
	

    all t:Train |{
     	always (t.pos in Exit implies no t.pos')
      	
    }
  	
}
pred __repair { iddhZ8DPf47YBj42XdB_prop5 }
check __repair { iddhZ8DPf47YBj42XdB_prop5 <=> prop5o }