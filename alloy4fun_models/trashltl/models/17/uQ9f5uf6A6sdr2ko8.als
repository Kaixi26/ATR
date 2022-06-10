open main
pred iduQ9f5uf6A6sdr2ko8_prop18 {
	always(all f:Protected | f not in Protected implies f in Trash)
}
pred __repair { iduQ9f5uf6A6sdr2ko8_prop18 }
check __repair { iduQ9f5uf6A6sdr2ko8_prop18 <=> prop18o }