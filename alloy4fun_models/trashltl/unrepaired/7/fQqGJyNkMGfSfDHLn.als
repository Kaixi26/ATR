open main
pred idfQqGJyNkMGfSfDHLn_prop8 {
  
	always all f:File | eventually f.link in Trash
}
pred __repair { idfQqGJyNkMGfSfDHLn_prop8 }
check __repair { idfQqGJyNkMGfSfDHLn_prop8 <=> prop8o }