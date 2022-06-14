open main
pred idvG7rtuAqpzsigQqxf_prop3 {
	
  all t : Track | always lone t.pos
}
pred __repair { idvG7rtuAqpzsigQqxf_prop3 }
check __repair { idvG7rtuAqpzsigQqxf_prop3 <=> prop3o }