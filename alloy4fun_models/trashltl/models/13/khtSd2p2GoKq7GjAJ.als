open main
pred idkhtSd2p2GoKq7GjAJ_prop14 {
  all f:File | (f in Protected & Trash) implies f not in Protected'

}
pred __repair { idkhtSd2p2GoKq7GjAJ_prop14 }
check __repair { idkhtSd2p2GoKq7GjAJ_prop14 <=> prop14o }