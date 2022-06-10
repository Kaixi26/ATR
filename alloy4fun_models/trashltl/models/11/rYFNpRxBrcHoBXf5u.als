open main
pred idrYFNpRxBrcHoBXf5u_prop12 {
	some f:File | eventually f in Trash implies eventually always f in Trash
}
pred __repair { idrYFNpRxBrcHoBXf5u_prop12 }
check __repair { idrYFNpRxBrcHoBXf5u_prop12 <=> prop12o }