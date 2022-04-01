open main
pred id4nYsWmji6Lxb742fz_prop6 {
  all f : File | always ((f in Trash) implies (always f in Trash))
}
pred __repair { id4nYsWmji6Lxb742fz_prop6 }
check __repair { id4nYsWmji6Lxb742fz_prop6 <=> prop6o }