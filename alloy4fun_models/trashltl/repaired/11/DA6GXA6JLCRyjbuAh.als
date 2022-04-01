open main
pred idDA6GXA6JLCRyjbuAh_prop12 {
  eventually all t : Trash | after t not in Trash
}
pred __repair { idDA6GXA6JLCRyjbuAh_prop12 }
check __repair { idDA6GXA6JLCRyjbuAh_prop12 <=> prop12o }