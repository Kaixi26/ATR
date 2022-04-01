open main
pred id7rD4MERBSEKTL4gBd_prop12 {
  eventually some f : File | f in Trash implies always f in Trash
}
pred __repair { id7rD4MERBSEKTL4gBd_prop12 }
check __repair { id7rD4MERBSEKTL4gBd_prop12 <=> prop12o }