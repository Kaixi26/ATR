open main
pred idAspHXJtbhq4wBxo3t_prop16 {
	
	always (all t:pos.Exit | (always some t.pos) since t.pos in Entry)
}
pred __repair { idAspHXJtbhq4wBxo3t_prop16 }
check __repair { idAspHXJtbhq4wBxo3t_prop16 <=> prop16o }