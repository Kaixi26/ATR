open main
pred idPLGTpdePL4dNSihy6_prop11 {
	always all f:File | Protected' = Protected + f
}
pred __repair { idPLGTpdePL4dNSihy6_prop11 }
check __repair { idPLGTpdePL4dNSihy6_prop11 <=> prop11o }