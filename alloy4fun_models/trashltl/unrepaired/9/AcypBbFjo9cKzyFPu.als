open main
pred idAcypBbFjo9cKzyFPu_prop10 {
	always(all f: (File & Protected) |  f in Protected)
}
pred __repair { idAcypBbFjo9cKzyFPu_prop10 }
check __repair { idAcypBbFjo9cKzyFPu_prop10 <=> prop10o }