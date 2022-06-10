open main
pred idXt74Tth626nDXMR6B_prop17 {
  all f: File | once f in Trash releases always f' not in File

}
pred __repair { idXt74Tth626nDXMR6B_prop17 }
check __repair { idXt74Tth626nDXMR6B_prop17 <=> prop17o }