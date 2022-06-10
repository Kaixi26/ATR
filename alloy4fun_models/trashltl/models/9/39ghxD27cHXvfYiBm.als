open main
pred id39ghxD27cHXvfYiBm_prop10 {
  always all f: Protected | always f not in Trash and always f not in File
  
}
pred __repair { id39ghxD27cHXvfYiBm_prop10 }
check __repair { id39ghxD27cHXvfYiBm_prop10 <=> prop10o }