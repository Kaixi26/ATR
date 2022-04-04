open main
pred idZqF7JSFp3NzQxQDsT_prop18 {
  always (all f : File | f in Trash triggered f not in Protected)
}
pred __repair { idZqF7JSFp3NzQxQDsT_prop18 }
check __repair { idZqF7JSFp3NzQxQDsT_prop18 <=> prop18o }