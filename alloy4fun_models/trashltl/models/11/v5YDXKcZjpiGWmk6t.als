open main
pred idv5YDXKcZjpiGWmk6t_prop12 {
  all f: File | eventually some Trash and once f in Trash implies always f in Trash
}
pred __repair { idv5YDXKcZjpiGWmk6t_prop12 }
check __repair { idv5YDXKcZjpiGWmk6t_prop12 <=> prop12o }