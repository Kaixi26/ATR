open main
pred idRntH6FCJPr3T5Q8Db_prop3 {
	
  always all t: Train |one tr: Track | t.pos in tr implies after t.pos in tr
}
pred __repair { idRntH6FCJPr3T5Q8Db_prop3 }
check __repair { idRntH6FCJPr3T5Q8Db_prop3 <=> prop3o }