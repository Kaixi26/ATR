open main
pred idy4YaAbzgBDumCwsDj_prop17 {
	always (all f : File | after f not in File)
}
pred __repair { idy4YaAbzgBDumCwsDj_prop17 }
check __repair { idy4YaAbzgBDumCwsDj_prop17 <=> prop17o }