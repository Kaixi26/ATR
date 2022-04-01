open main
pred idhYWRc3vpCmEaM7Cbv_prop12 {
  always all t:Trash | t in Trash releases t not in Trash
}
pred __repair { idhYWRc3vpCmEaM7Cbv_prop12 }
check __repair { idhYWRc3vpCmEaM7Cbv_prop12 <=> prop12o }