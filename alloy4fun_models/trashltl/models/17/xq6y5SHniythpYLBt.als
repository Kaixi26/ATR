open main
pred idxq6y5SHniythpYLBt_prop18 {
	all f : Protected | always (f not in Protected triggered  f in Trash)
}
pred __repair { idxq6y5SHniythpYLBt_prop18 }
check __repair { idxq6y5SHniythpYLBt_prop18 <=> prop18o }