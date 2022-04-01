open main
pred id27D2mhgLs7HHgusGT_prop12 {
  always all t:Trash | (once t not in Trash and t in Trash) releases t not in Trash
}
pred __repair { id27D2mhgLs7HHgusGT_prop12 }
check __repair { id27D2mhgLs7HHgusGT_prop12 <=> prop12o }