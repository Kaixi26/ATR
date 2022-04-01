open main
pred idqJPBWpRT8PtatjuTm_prop16 {

  always all f:File | f in Protected implies always f in Protected
  
}
pred __repair { idqJPBWpRT8PtatjuTm_prop16 }
check __repair { idqJPBWpRT8PtatjuTm_prop16 <=> prop16o }