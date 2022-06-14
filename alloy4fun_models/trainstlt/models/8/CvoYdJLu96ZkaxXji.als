open main
pred idCvoYdJLu96ZkaxXji_prop9 {
	
	always ( all t:Train | some tk:Entry | eventually (no t.pos until t.pos in tk))
}
pred __repair { idCvoYdJLu96ZkaxXji_prop9 }
check __repair { idCvoYdJLu96ZkaxXji_prop9 <=> prop9o }