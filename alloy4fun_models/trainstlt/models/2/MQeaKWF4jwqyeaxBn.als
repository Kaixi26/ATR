open main
pred idMQeaKWF4jwqyeaxBn_prop3 {
	
 	always pos = pos and (all t : (Train - pos.Track) | t.pos not in Track implies always t.pos not in Track)
}
pred __repair { idMQeaKWF4jwqyeaxBn_prop3 }
check __repair { idMQeaKWF4jwqyeaxBn_prop3 <=> prop3o }