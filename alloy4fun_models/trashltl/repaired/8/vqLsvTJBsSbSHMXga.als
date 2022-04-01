open main
pred idvqLsvTJBsSbSHMXga_prop9 {
	all f: File | always(f in Protected implies always f not in Trash)
}
pred __repair { idvqLsvTJBsSbSHMXga_prop9 }
check __repair { idvqLsvTJBsSbSHMXga_prop9 <=> prop9o }