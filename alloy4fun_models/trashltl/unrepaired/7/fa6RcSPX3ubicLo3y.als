open main
pred idfa6RcSPX3ubicLo3y_prop8 {
	always (all f:File| some f &f.^link  implies  eventually  f.*link  in Trash)

}
pred __repair { idfa6RcSPX3ubicLo3y_prop8 }
check __repair { idfa6RcSPX3ubicLo3y_prop8 <=> prop8o }