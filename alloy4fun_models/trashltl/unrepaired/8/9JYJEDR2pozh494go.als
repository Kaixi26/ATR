open main
pred id9JYJEDR2pozh494go_prop9 {
  all f: File | always f' not in Trash since f in Protected
}
pred __repair { id9JYJEDR2pozh494go_prop9 }
check __repair { id9JYJEDR2pozh494go_prop9 <=> prop9o }