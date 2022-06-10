open main
pred idyrrcEmnBQqtBxLmdS_prop10 {
  always all f : Protected | eventually f in Protected implies always f in Protected 
}
pred __repair { idyrrcEmnBQqtBxLmdS_prop10 }
check __repair { idyrrcEmnBQqtBxLmdS_prop10 <=> prop10o }