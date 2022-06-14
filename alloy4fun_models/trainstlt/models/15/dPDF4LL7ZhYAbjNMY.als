open main
pred iddPDF4LL7ZhYAbjNMY_prop16 {
	
	always (all t:pos.Exit | (always some t.pos) since t.pos in Entry)
}
pred __repair { iddPDF4LL7ZhYAbjNMY_prop16 }
check __repair { iddPDF4LL7ZhYAbjNMY_prop16 <=> prop16o }