open main
pred idyktrwS4f8QN5WMhc9_prop4 {
  	some f: File | f not in Protected and eventually f in Trash

}
pred __repair { idyktrwS4f8QN5WMhc9_prop4 }
check __repair { idyktrwS4f8QN5WMhc9_prop4 <=> prop4o }