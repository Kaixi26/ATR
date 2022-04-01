open main
pred idvjaWN2F7vc7DiwX4M_prop6 {
	all f : File-Protected | f in Trash => always f in Trash
}
pred __repair { idvjaWN2F7vc7DiwX4M_prop6 }
check __repair { idvjaWN2F7vc7DiwX4M_prop6 <=> prop6o }