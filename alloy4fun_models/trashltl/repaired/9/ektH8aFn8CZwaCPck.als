open main
pred idektH8aFn8CZwaCPck_prop10 {
  always all f:File | f in Protected implies f in Protected
  

}
pred __repair { idektH8aFn8CZwaCPck_prop10 }
check __repair { idektH8aFn8CZwaCPck_prop10 <=> prop10o }