open main
pred idbmeca3ubTLA93Fxhy_prop18 {
	always (all f : Protected | f in Trash implies after f not in Protected)
}
pred __repair { idbmeca3ubTLA93Fxhy_prop18 }
check __repair { idbmeca3ubTLA93Fxhy_prop18 <=> prop18o }