open main
pred idBjz5qPuQ6hdWe44mu_prop8 {
	always (all f:File| some f.^link  implies  eventually after f+f.^link  in Trash)
  	
}
pred __repair { idBjz5qPuQ6hdWe44mu_prop8 }
check __repair { idBjz5qPuQ6hdWe44mu_prop8 <=> prop8o }