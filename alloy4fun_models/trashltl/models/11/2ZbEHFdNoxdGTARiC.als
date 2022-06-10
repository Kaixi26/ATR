open main
pred id2ZbEHFdNoxdGTARiC_prop12 {
  always some f: File | eventually f in Trash
}
pred __repair { id2ZbEHFdNoxdGTARiC_prop12 }
check __repair { id2ZbEHFdNoxdGTARiC_prop12 <=> prop12o }