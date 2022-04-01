open main
pred idWNq5bgeTQxJFxpvmQ_prop6 {
  all f : File | f in Trash implies always f in Trash 
}
pred __repair { idWNq5bgeTQxJFxpvmQ_prop6 }
check __repair { idWNq5bgeTQxJFxpvmQ_prop6 <=> prop6o }