open main
pred idtR6bX5WLM8EjziXte_prop16 {
	
	always (all t:pos.Exit | (historically some t.pos) since t.pos in Entry)
}
pred __repair { idtR6bX5WLM8EjziXte_prop16 }
check __repair { idtR6bX5WLM8EjziXte_prop16 <=> prop16o }