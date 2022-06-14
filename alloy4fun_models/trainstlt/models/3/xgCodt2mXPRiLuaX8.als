open main
pred idxgCodt2mXPRiLuaX8_prop4 {
	
  	always all t1, t2: Train | some tr1,tr2: Track | t1.pos in tr1 and t2.pos in tr1 implies t1=t2
}
pred __repair { idxgCodt2mXPRiLuaX8_prop4 }
check __repair { idxgCodt2mXPRiLuaX8_prop4 <=> prop4o }