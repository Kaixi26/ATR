open main
pred id7JPFFNt7KiBoatARj_prop16 {
	
	always all t : Train | (t.pos = Exit) implies ((always some t.pos) since (t.pos = Entry))
}
pred __repair { id7JPFFNt7KiBoatARj_prop16 }
check __repair { id7JPFFNt7KiBoatARj_prop16 <=> prop16o }