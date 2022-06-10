open main
pred idmfFao4anZyZwFvZJY_prop12 {
  always all f: File | eventually f in Trash and eventually f in Trash releases f not in Trash
}
pred __repair { idmfFao4anZyZwFvZJY_prop12 }
check __repair { idmfFao4anZyZwFvZJY_prop12 <=> prop12o }