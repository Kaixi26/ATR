open main
pred idKCkTLxtsweGCcEeB6_prop18 {
	always all f: File | always (f not in Protected releases f in Trash)
}
pred __repair { idKCkTLxtsweGCcEeB6_prop18 }
check __repair { idKCkTLxtsweGCcEeB6_prop18 <=> prop18o }