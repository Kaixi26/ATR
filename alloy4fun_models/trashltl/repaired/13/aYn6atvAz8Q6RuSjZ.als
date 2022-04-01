open main
pred idaYn6atvAz8Q6RuSjZ_prop14 {
  all f : Trash & Protected | after f not in Protected
}
pred __repair { idaYn6atvAz8Q6RuSjZ_prop14 }
check __repair { idaYn6atvAz8Q6RuSjZ_prop14 <=> prop14o }