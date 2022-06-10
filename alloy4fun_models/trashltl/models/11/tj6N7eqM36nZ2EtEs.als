open main
pred idtj6N7eqM36nZ2EtEs_prop12 {
  eventually some f:File | f in Trash' implies always f in Trash'

}
pred __repair { idtj6N7eqM36nZ2EtEs_prop12 }
check __repair { idtj6N7eqM36nZ2EtEs_prop12 <=> prop12o }