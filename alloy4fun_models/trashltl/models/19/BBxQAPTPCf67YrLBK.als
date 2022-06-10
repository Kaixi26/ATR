open main
pred idBBxQAPTPCf67YrLBK_prop20 {
 always all f:File | f in Trash implies once f in Protected 
}
pred __repair { idBBxQAPTPCf67YrLBK_prop20 }
check __repair { idBBxQAPTPCf67YrLBK_prop20 <=> prop20o }