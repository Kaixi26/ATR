open main
pred id2bchxJd3tPpX5X8MN_prop17 {
  all f: File | eventually always f in Trash implies always after f not in File

}
pred __repair { id2bchxJd3tPpX5X8MN_prop17 }
check __repair { id2bchxJd3tPpX5X8MN_prop17 <=> prop17o }