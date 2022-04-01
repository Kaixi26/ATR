open main
pred idoQX2g4h6DRnuSshyf_prop4 {
  some File
  some f:File | eventually f in Trash
}
pred __repair { idoQX2g4h6DRnuSshyf_prop4 }
check __repair { idoQX2g4h6DRnuSshyf_prop4 <=> prop4o }