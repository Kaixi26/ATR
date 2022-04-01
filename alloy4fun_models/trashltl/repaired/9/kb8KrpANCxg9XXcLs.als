open main
pred idkb8KrpANCxg9XXcLs_prop10 {
  
  always all f:File | f in Protected implies always f in Protected
}
pred __repair { idkb8KrpANCxg9XXcLs_prop10 }
check __repair { idkb8KrpANCxg9XXcLs_prop10 <=> prop10o }