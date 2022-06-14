open main
pred idTZRC9ZCkxcBHEGEjA_prop3 {
	
  	all t: Train, tt: Track | t->tt in pos implies always t->tt in pos
}
pred __repair { idTZRC9ZCkxcBHEGEjA_prop3 }
check __repair { idTZRC9ZCkxcBHEGEjA_prop3 <=> prop3o }