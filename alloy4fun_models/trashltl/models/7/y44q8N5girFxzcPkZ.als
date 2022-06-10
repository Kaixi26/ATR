open main
pred idy44q8N5girFxzcPkZ_prop8 {
	always (all f:File| some f.^link  implies  eventually  f.^link  in Trash)
  	
}
pred __repair { idy44q8N5girFxzcPkZ_prop8 }
check __repair { idy44q8N5girFxzcPkZ_prop8 <=> prop8o }