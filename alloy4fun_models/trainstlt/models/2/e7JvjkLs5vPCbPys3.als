open main
pred ide7JvjkLs5vPCbPys3_prop3 {
	
  always ~pos.pos in iden and (always all t : Train | always lone t.pos)
}
pred __repair { ide7JvjkLs5vPCbPys3_prop3 }
check __repair { ide7JvjkLs5vPCbPys3_prop3 <=> prop3o }