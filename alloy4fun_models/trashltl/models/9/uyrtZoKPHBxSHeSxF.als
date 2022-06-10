open main
pred iduyrtZoKPHBxSHeSxF_prop10 {
  always all f: Protected | f not in Trash and always f not in File
  
}
pred __repair { iduyrtZoKPHBxSHeSxF_prop10 }
check __repair { iduyrtZoKPHBxSHeSxF_prop10 <=> prop10o }