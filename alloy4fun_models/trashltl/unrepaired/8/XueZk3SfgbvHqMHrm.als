open main
pred idXueZk3SfgbvHqMHrm_prop9 {
  all f: File | eventually after f in Protected implies always f not in Trash
}
pred __repair { idXueZk3SfgbvHqMHrm_prop9 }
check __repair { idXueZk3SfgbvHqMHrm_prop9 <=> prop9o }