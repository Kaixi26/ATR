open main
pred idPhLFC3T3voJ8SuXhu_prop5 {
  some f : File | eventually (f not in File)
}
pred __repair { idPhLFC3T3voJ8SuXhu_prop5 }
check __repair { idPhLFC3T3voJ8SuXhu_prop5 <=> prop5o }