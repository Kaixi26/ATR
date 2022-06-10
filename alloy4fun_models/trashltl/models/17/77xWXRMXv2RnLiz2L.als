open main
pred id77xWXRMXv2RnLiz2L_prop18 {
	always all f : Protected | f in Trash releases f not in Protected
}
pred __repair { id77xWXRMXv2RnLiz2L_prop18 }
check __repair { id77xWXRMXv2RnLiz2L_prop18 <=> prop18o }