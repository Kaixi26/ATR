open main
pred idTwkrW3ojtZrkAF8vg_prop10 {
	always all f:Protected | always f in Protected'
}
pred __repair { idTwkrW3ojtZrkAF8vg_prop10 }
check __repair { idTwkrW3ojtZrkAF8vg_prop10 <=> prop10o }