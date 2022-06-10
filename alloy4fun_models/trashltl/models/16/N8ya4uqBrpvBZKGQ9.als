open main
pred idN8ya4uqBrpvBZKGQ9_prop17 {
  all f: File |(always f' not in File since f in Trash)

}
pred __repair { idN8ya4uqBrpvBZKGQ9_prop17 }
check __repair { idN8ya4uqBrpvBZKGQ9_prop17 <=> prop17o }