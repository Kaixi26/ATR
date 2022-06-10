open main
pred idpB4ZpdPPNGasraE7G_prop12 {
	eventually (always all f:File | f not in Trash implies f in Trash')
}
pred __repair { idpB4ZpdPPNGasraE7G_prop12 }
check __repair { idpB4ZpdPPNGasraE7G_prop12 <=> prop12o }