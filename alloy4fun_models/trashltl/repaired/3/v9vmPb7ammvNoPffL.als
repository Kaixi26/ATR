open main
pred idv9vmPb7ammvNoPffL_prop4 {
  	some f: File | eventually f in Trash since f not in Protected

}
pred __repair { idv9vmPb7ammvNoPffL_prop4 }
check __repair { idv9vmPb7ammvNoPffL_prop4 <=> prop4o }