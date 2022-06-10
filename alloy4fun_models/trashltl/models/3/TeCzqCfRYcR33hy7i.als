open main
pred idTeCzqCfRYcR33hy7i_prop4 {
  some File
  some f:File | eventually f in Trash'
}
pred __repair { idTeCzqCfRYcR33hy7i_prop4 }
check __repair { idTeCzqCfRYcR33hy7i_prop4 <=> prop4o }