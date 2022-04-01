open main
pred idaw5yChxNtwt5RtrLP_prop14 {
	always some f : (Protected & Trash) | f not in Protected'
}
pred __repair { idaw5yChxNtwt5RtrLP_prop14 }
check __repair { idaw5yChxNtwt5RtrLP_prop14 <=> prop14o }