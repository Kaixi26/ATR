open main
pred idYXySo7MaQozkuTiLh_prop3 {
	
  	always all t: Train, tt: Track | t->tt in pos implies always t->tt in pos
}
pred __repair { idYXySo7MaQozkuTiLh_prop3 }
check __repair { idYXySo7MaQozkuTiLh_prop3 <=> prop3o }