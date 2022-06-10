open main
pred id6iXdf9QFAHt9rderz_prop18 {
 
	always all f:Protected |     f in Trash  releases f not in Protected 
}
pred __repair { id6iXdf9QFAHt9rderz_prop18 }
check __repair { id6iXdf9QFAHt9rderz_prop18 <=> prop18o }