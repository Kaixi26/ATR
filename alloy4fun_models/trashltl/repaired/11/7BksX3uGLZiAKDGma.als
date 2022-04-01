open main
pred id7BksX3uGLZiAKDGma_prop12 {
  all f:File | after f in Trash implies always some (f &Trash) 
}
pred __repair { id7BksX3uGLZiAKDGma_prop12 }
check __repair { id7BksX3uGLZiAKDGma_prop12 <=> prop12o }