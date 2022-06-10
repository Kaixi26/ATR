open main
pred idmcdEZAo8cccNC5T2N_prop17 {
  all f: File | once f in Trash releases always f' in File

}
pred __repair { idmcdEZAo8cccNC5T2N_prop17 }
check __repair { idmcdEZAo8cccNC5T2N_prop17 <=> prop17o }