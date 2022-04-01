open main
pred idwLqjoJssRqJ3nymxr_prop16 {

  always all f:File | f in Protected implies always f in Protected
  
}
pred __repair { idwLqjoJssRqJ3nymxr_prop16 }
check __repair { idwLqjoJssRqJ3nymxr_prop16 <=> prop16o }