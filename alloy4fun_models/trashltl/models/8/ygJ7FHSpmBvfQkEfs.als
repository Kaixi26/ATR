open main
pred idygJ7FHSpmBvfQkEfs_prop9 {
  all f: File | f in Protected implies always f not in Trash
}
pred __repair { idygJ7FHSpmBvfQkEfs_prop9 }
check __repair { idygJ7FHSpmBvfQkEfs_prop9 <=> prop9o }