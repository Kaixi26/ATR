open main
pred idLXsGsdYAz6NqEQNCf_prop12 {
  eventually all f : File | eventually f in Trash implies always f in Trash
}
pred __repair { idLXsGsdYAz6NqEQNCf_prop12 }
check __repair { idLXsGsdYAz6NqEQNCf_prop12 <=> prop12o }