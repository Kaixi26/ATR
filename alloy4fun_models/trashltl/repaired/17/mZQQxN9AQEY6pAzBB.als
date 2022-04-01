open main
pred idmZQQxN9AQEY6pAzBB_prop18 {
  always all f: Protected | f in Protected until f in Trash
}
pred __repair { idmZQQxN9AQEY6pAzBB_prop18 }
check __repair { idmZQQxN9AQEY6pAzBB_prop18 <=> prop18o }