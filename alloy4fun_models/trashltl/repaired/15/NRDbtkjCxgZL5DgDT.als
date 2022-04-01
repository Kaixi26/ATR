open main
pred idNRDbtkjCxgZL5DgDT_prop16 {
  all f:File | historically f in Protected implies after f in Protected
}
pred __repair { idNRDbtkjCxgZL5DgDT_prop16 }
check __repair { idNRDbtkjCxgZL5DgDT_prop16 <=> prop16o }