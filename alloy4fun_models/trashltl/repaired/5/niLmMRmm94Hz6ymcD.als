open main
pred idniLmMRmm94Hz6ymcD_prop6 {
	all f: File |(always f in Trash) since f in Trash
}
pred __repair { idniLmMRmm94Hz6ymcD_prop6 }
check __repair { idniLmMRmm94Hz6ymcD_prop6 <=> prop6o }