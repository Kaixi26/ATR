open main
pred idse4DAESG95PdyeBnR_prop3 {
	
  
  always ((Train->Track in pos implies always Train->Track in pos) and (Train->Track not in pos implies always Train->Track not in pos))
}
pred __repair { idse4DAESG95PdyeBnR_prop3 }
check __repair { idse4DAESG95PdyeBnR_prop3 <=> prop3o }