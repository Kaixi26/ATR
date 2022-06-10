open main
pred idiRx43jwbA8r8i3Czs_prop16 {

  always all f:File | f in Protected implies f in Protected
  
}
pred __repair { idiRx43jwbA8r8i3Czs_prop16 }
check __repair { idiRx43jwbA8r8i3Czs_prop16 <=> prop16o }