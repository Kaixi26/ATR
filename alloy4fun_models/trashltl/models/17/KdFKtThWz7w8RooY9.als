open main
pred idKdFKtThWz7w8RooY9_prop18 {
  always all p:Protected | p not in Protected' implies always p in Trash'

}
pred __repair { idKdFKtThWz7w8RooY9_prop18 }
check __repair { idKdFKtThWz7w8RooY9_prop18 <=> prop18o }