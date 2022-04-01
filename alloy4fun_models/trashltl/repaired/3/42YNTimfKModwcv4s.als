open main
pred id42YNTimfKModwcv4s_prop4 {
  	some f: File | (always f not in Protected) implies eventually f in Trash

}
pred __repair { id42YNTimfKModwcv4s_prop4 }
check __repair { id42YNTimfKModwcv4s_prop4 <=> prop4o }