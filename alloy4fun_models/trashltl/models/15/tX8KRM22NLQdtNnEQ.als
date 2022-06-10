open main
pred idtX8KRM22NLQdtNnEQ_prop16 {

  always all f:File | f in Protected implies f in Protected'
  
}
pred __repair { idtX8KRM22NLQdtNnEQ_prop16 }
check __repair { idtX8KRM22NLQdtNnEQ_prop16 <=> prop16o }