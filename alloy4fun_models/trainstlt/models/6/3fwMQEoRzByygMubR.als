open main
pred id3fwMQEoRzByygMubR_prop7 {
	
	eventually all t : Train | no t.pos
}
pred __repair { id3fwMQEoRzByygMubR_prop7 }
check __repair { id3fwMQEoRzByygMubR_prop7 <=> prop7o }