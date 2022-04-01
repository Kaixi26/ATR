open main
pred idbXzB7mMkHQzaEGqQf_prop18 {
	always (all f:Protected | f not in Protected releases f in Trash)
}
pred __repair { idbXzB7mMkHQzaEGqQf_prop18 }
check __repair { idbXzB7mMkHQzaEGqQf_prop18 <=> prop18o }