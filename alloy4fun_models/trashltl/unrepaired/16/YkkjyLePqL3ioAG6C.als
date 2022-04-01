open main
pred idYkkjyLePqL3ioAG6C_prop17 {
  all f: File | once f in Trash releases f' not in File

}
pred __repair { idYkkjyLePqL3ioAG6C_prop17 }
check __repair { idYkkjyLePqL3ioAG6C_prop17 <=> prop17o }