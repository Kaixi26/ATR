open main
pred idC84k6QMnWaBNrbB6z_prop12 {
  always all t : Trash | after t in Trash or t not in Trash
}
pred __repair { idC84k6QMnWaBNrbB6z_prop12 }
check __repair { idC84k6QMnWaBNrbB6z_prop12 <=> prop12o }