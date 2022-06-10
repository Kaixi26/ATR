open main
pred idnr95vCYytBcgBfEMd_prop5 {
  some f : File | eventually (f+f.link) in Trash
}
pred __repair { idnr95vCYytBcgBfEMd_prop5 }
check __repair { idnr95vCYytBcgBfEMd_prop5 <=> prop5o }