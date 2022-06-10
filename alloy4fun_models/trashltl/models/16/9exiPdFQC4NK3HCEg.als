open main
pred id9exiPdFQC4NK3HCEg_prop17 {
	always all f : File | f not in File since f in Trash
}
pred __repair { id9exiPdFQC4NK3HCEg_prop17 }
check __repair { id9exiPdFQC4NK3HCEg_prop17 <=> prop17o }