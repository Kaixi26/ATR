open main
pred idy5bJXPNCe3wyhcurx_prop6 {
	all f:File | always (f in Trash implies (after f in Trash))
}
pred __repair { idy5bJXPNCe3wyhcurx_prop6 }
check __repair { idy5bJXPNCe3wyhcurx_prop6 <=> prop6o }