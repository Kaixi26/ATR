open main
pred idAAR8nvgwzTWGgp6Rv_prop2 {
	
	always all s: Signal | eventually s = Green
}
pred __repair { idAAR8nvgwzTWGgp6Rv_prop2 }
check __repair { idAAR8nvgwzTWGgp6Rv_prop2 <=> prop2o }