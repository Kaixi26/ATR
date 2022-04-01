open main
pred idBiE3qoonDPZxf2XT6_prop4 {
  	some f: File | always eventually f in Trash since f not in Protected

}
pred __repair { idBiE3qoonDPZxf2XT6_prop4 }
check __repair { idBiE3qoonDPZxf2XT6_prop4 <=> prop4o }