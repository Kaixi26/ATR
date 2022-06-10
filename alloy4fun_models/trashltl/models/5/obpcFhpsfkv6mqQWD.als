open main
pred idobpcFhpsfkv6mqQWD_prop6 {
  	all f : File | always (f in Trash implies always f in Trash)
}
pred __repair { idobpcFhpsfkv6mqQWD_prop6 }
check __repair { idobpcFhpsfkv6mqQWD_prop6 <=> prop6o }