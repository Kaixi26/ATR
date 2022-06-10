open main
pred id8eyLPF4Gszk5Cfsoi_prop18 {
	all f : File | always (f in Trash => f not in Protected)
}
pred __repair { id8eyLPF4Gszk5Cfsoi_prop18 }
check __repair { id8eyLPF4Gszk5Cfsoi_prop18 <=> prop18o }