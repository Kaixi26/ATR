open main
pred id8j4EqGpfYnSdw8Y9k_prop18 {
	all f : File | always (f not in Protected since f in Trash)
}
pred __repair { id8j4EqGpfYnSdw8Y9k_prop18 }
check __repair { id8j4EqGpfYnSdw8Y9k_prop18 <=> prop18o }