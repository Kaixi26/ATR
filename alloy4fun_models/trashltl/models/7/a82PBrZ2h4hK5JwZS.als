open main
pred ida82PBrZ2h4hK5JwZS_prop8 {
  	always all f: File | eventually f.link in Trash

}
pred __repair { ida82PBrZ2h4hK5JwZS_prop8 }
check __repair { ida82PBrZ2h4hK5JwZS_prop8 <=> prop8o }