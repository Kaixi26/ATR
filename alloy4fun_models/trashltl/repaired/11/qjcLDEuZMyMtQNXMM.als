open main
pred idqjcLDEuZMyMtQNXMM_prop12 {
  eventually some f:File | f in Trash implies always f in Trash'

}
pred __repair { idqjcLDEuZMyMtQNXMM_prop12 }
check __repair { idqjcLDEuZMyMtQNXMM_prop12 <=> prop12o }