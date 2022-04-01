open main
pred idjzKk4v27ybrTJDkZB_prop9 {
  all f: File | always f not in Trash implies once f in Protected
}
pred __repair { idjzKk4v27ybrTJDkZB_prop9 }
check __repair { idjzKk4v27ybrTJDkZB_prop9 <=> prop9o }