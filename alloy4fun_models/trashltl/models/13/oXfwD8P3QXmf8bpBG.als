open main
pred idoXfwD8P3QXmf8bpBG_prop14 {
  all f: Protected | eventually f in Trash implies f' not in Protected

}
pred __repair { idoXfwD8P3QXmf8bpBG_prop14 }
check __repair { idoXfwD8P3QXmf8bpBG_prop14 <=> prop14o }