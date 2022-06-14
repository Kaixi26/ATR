open main
pred idqwZiHJwA7cJpgkLkt_prop16 {
	
	always (all t:pos.Exit | (some t.pos) since t.pos in Entry)
}
pred __repair { idqwZiHJwA7cJpgkLkt_prop16 }
check __repair { idqwZiHJwA7cJpgkLkt_prop16 <=> prop16o }