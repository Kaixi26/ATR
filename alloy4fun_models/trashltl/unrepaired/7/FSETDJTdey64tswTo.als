open main
pred idFSETDJTdey64tswTo_prop8 {
  	always all f: File | always eventually f.link in Trash

}
pred __repair { idFSETDJTdey64tswTo_prop8 }
check __repair { idFSETDJTdey64tswTo_prop8 <=> prop8o }