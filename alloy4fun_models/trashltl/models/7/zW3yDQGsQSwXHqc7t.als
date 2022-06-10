open main
pred idzW3yDQGsQSwXHqc7t_prop8 {
	always (all f:File| some f.*link  implies  eventually  f.*link  in Trash)

}
pred __repair { idzW3yDQGsQSwXHqc7t_prop8 }
check __repair { idzW3yDQGsQSwXHqc7t_prop8 <=> prop8o }