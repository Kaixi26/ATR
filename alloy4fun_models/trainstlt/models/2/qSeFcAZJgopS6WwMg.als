open main
pred idqSeFcAZJgopS6WwMg_prop3 {
	
  always all t: Train | after t.pos = t.pos
}
pred __repair { idqSeFcAZJgopS6WwMg_prop3 }
check __repair { idqSeFcAZJgopS6WwMg_prop3 <=> prop3o }