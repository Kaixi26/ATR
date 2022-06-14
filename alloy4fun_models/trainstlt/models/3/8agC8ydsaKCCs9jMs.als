open main
pred id8agC8ydsaKCCs9jMs_prop4 {
	
  	always all t1, t2: Train | some tr1: Track | always (t1.pos in tr1 and t2.pos in tr1 implies t1=t2)
}
pred __repair { id8agC8ydsaKCCs9jMs_prop4 }
check __repair { id8agC8ydsaKCCs9jMs_prop4 <=> prop4o }