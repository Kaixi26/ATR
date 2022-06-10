open main
pred idNmddHWkMCJHf7YH5u_prop18 {
	all f : Protected | always (f in Trash triggered  f not in Protected)
}
pred __repair { idNmddHWkMCJHf7YH5u_prop18 }
check __repair { idNmddHWkMCJHf7YH5u_prop18 <=> prop18o }