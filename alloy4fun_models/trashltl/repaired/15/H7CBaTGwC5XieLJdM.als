open main
pred idH7CBaTGwC5XieLJdM_prop16 {
  all f:File | historically f in Protected implies always after f in Protected
}
pred __repair { idH7CBaTGwC5XieLJdM_prop16 }
check __repair { idH7CBaTGwC5XieLJdM_prop16 <=> prop16o }