open main
pred idSEy7MtsmFPFgHjnLW_prop12 {
  always all f: File | eventually f in Trash and f in Trash releases f not in Trash
}
pred __repair { idSEy7MtsmFPFgHjnLW_prop12 }
check __repair { idSEy7MtsmFPFgHjnLW_prop12 <=> prop12o }