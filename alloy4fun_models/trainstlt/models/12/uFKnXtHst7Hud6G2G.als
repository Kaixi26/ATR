open main
pred iduFKnXtHst7Hud6G2G_prop13 {
	
	 ( all t:Train | no t.pos implies always (no t.pos))
}
pred __repair { iduFKnXtHst7Hud6G2G_prop13 }
check __repair { iduFKnXtHst7Hud6G2G_prop13 <=> prop13o }