open main
pred ideZ35RGd3fkQvRJYKo_prop17 {
  all f: File |always f in Trash implies always f' not in File

}
pred __repair { ideZ35RGd3fkQvRJYKo_prop17 }
check __repair { ideZ35RGd3fkQvRJYKo_prop17 <=> prop17o }