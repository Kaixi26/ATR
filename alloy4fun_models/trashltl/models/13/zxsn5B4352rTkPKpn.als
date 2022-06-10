open main
pred idzxsn5B4352rTkPKpn_prop14 {
	
	always all f:File | f in Trash implies f not in Protected' 
  
}
pred __repair { idzxsn5B4352rTkPKpn_prop14 }
check __repair { idzxsn5B4352rTkPKpn_prop14 <=> prop14o }