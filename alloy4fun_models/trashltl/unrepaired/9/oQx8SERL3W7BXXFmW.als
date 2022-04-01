open main
pred idoQx8SERL3W7BXXFmW_prop10 {
  always all f: Protected | f not in Trash and f not in File
  
}
pred __repair { idoQx8SERL3W7BXXFmW_prop10 }
check __repair { idoQx8SERL3W7BXXFmW_prop10 <=> prop10o }