open main
pred id3LkvbQFnzopXqfuFa_prop14 {
  all f : Trash & Protected | after f not in Protected
}
pred __repair { id3LkvbQFnzopXqfuFa_prop14 }
check __repair { id3LkvbQFnzopXqfuFa_prop14 <=> prop14o }