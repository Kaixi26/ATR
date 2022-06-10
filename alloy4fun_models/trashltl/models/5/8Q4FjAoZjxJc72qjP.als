open main
pred id8Q4FjAoZjxJc72qjP_prop6 {
  	all f : File { always (f in Trash implies always f in Trash) }
}
pred __repair { id8Q4FjAoZjxJc72qjP_prop6 }
check __repair { id8Q4FjAoZjxJc72qjP_prop6 <=> prop6o }