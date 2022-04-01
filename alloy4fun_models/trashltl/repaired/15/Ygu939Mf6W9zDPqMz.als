open main
pred idYgu939Mf6W9zDPqMz_prop16 {

  always all f:File | f in Protected implies always f in Protected 
  
}
pred __repair { idYgu939Mf6W9zDPqMz_prop16 }
check __repair { idYgu939Mf6W9zDPqMz_prop16 <=> prop16o }