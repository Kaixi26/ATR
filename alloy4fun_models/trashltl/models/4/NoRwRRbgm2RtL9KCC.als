open main
pred idNoRwRRbgm2RtL9KCC_prop5 {
  some f: File | no Trash and eventually f in Trash
}
pred __repair { idNoRwRRbgm2RtL9KCC_prop5 }
check __repair { idNoRwRRbgm2RtL9KCC_prop5 <=> prop5o }