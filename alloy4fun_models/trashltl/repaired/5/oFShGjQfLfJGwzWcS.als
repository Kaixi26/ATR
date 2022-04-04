open main
pred idoFShGjQfLfJGwzWcS_prop6 {
  	always all f: File | f not in Trash

}
pred __repair { idoFShGjQfLfJGwzWcS_prop6 }
check __repair { idoFShGjQfLfJGwzWcS_prop6 <=> prop6o }