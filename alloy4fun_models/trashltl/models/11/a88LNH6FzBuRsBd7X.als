open main
pred ida88LNH6FzBuRsBd7X_prop12 {
  always all f: File | f not in Trash since f in Trash
}
pred __repair { ida88LNH6FzBuRsBd7X_prop12 }
check __repair { ida88LNH6FzBuRsBd7X_prop12 <=> prop12o }