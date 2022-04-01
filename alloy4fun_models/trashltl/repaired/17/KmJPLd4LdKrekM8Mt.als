open main
pred idKmJPLd4LdKrekM8Mt_prop18 {
  always all p:Protected | p not in Protected' implies p in Trash'

}
pred __repair { idKmJPLd4LdKrekM8Mt_prop18 }
check __repair { idKmJPLd4LdKrekM8Mt_prop18 <=> prop18o }