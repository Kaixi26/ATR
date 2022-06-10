open main
pred idjbhkJtr84gPiQdPqD_prop17 {
	always File' = File - (File & Trash)
}
pred __repair { idjbhkJtr84gPiQdPqD_prop17 }
check __repair { idjbhkJtr84gPiQdPqD_prop17 <=> prop17o }