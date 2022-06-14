open main
pred idSkk6SYvRHqpwfrqqh_prop6 {
	
	always (Green = Signal and no Green' or no Green and Green' = Signal')
}
pred __repair { idSkk6SYvRHqpwfrqqh_prop6 }
check __repair { idSkk6SYvRHqpwfrqqh_prop6 <=> prop6o }