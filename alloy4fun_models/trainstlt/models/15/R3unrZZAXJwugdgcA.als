open main
pred idR3unrZZAXJwugdgcA_prop16 {
	
	always (all t:pos.Exit | (some t.pos) since t.pos in Entry)
}
pred __repair { idR3unrZZAXJwugdgcA_prop16 }
check __repair { idR3unrZZAXJwugdgcA_prop16 <=> prop16o }