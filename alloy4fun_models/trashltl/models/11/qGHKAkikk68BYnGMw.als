open main
pred idqGHKAkikk68BYnGMw_prop12 {
  

  	always all f:File | f in Trash implies eventually f in Trash'
  
}
pred __repair { idqGHKAkikk68BYnGMw_prop12 }
check __repair { idqGHKAkikk68BYnGMw_prop12 <=> prop12o }