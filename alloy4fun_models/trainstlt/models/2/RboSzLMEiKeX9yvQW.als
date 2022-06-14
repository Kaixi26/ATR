open main
pred idRboSzLMEiKeX9yvQW_prop3 {
	
  
  Train->Track in pos implies always Train->Track in pos and Train->Track not in pos implies always Train->Track not in pos
}
pred __repair { idRboSzLMEiKeX9yvQW_prop3 }
check __repair { idRboSzLMEiKeX9yvQW_prop3 <=> prop3o }