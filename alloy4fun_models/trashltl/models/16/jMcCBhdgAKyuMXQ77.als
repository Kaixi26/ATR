open main
pred idjMcCBhdgAKyuMXQ77_prop17 {
	all t: Trash | after t not in File
}
pred __repair { idjMcCBhdgAKyuMXQ77_prop17 }
check __repair { idjMcCBhdgAKyuMXQ77_prop17 <=> prop17o }