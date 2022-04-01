open main
pred idj58ueRc4iqfemYviq_prop6 {
  	all f : File | always (f in Trash implies always f in Trash)
}
pred __repair { idj58ueRc4iqfemYviq_prop6 }
check __repair { idj58ueRc4iqfemYviq_prop6 <=> prop6o }