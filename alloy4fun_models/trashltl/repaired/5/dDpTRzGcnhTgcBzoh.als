open main
pred iddDpTRzGcnhTgcBzoh_prop6 {
  all f : File | f in Trash implies always f in Trash
}
pred __repair { iddDpTRzGcnhTgcBzoh_prop6 }
check __repair { iddDpTRzGcnhTgcBzoh_prop6 <=> prop6o }