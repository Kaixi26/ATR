open main
pred idGToptnowxiKXS6mgj_prop4 {
  	some f: File | f not in Protected implies eventually (always f in Trash) and eventually (always f.link in Trash)

}
pred __repair { idGToptnowxiKXS6mgj_prop4 }
check __repair { idGToptnowxiKXS6mgj_prop4 <=> prop4o }