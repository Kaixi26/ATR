open main
pred idxxfStMNvsEw6WQcTn_prop16 {

  always all f:File | always f in Protected implies always f in Protected 
  
}
pred __repair { idxxfStMNvsEw6WQcTn_prop16 }
check __repair { idxxfStMNvsEw6WQcTn_prop16 <=> prop16o }