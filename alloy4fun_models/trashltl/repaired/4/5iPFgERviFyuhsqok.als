open main
pred id5iPFgERviFyuhsqok_prop5 {
  eventually (some f:File | f in File implies f not in File)
 }
pred __repair { id5iPFgERviFyuhsqok_prop5 }
check __repair { id5iPFgERviFyuhsqok_prop5 <=> prop5o }