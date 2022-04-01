open main
pred id75KdcDyJT34RjcGCM_prop18 {
	always all p : Protected | always p not in Protected => p in Trash
}
pred __repair { id75KdcDyJT34RjcGCM_prop18 }
check __repair { id75KdcDyJT34RjcGCM_prop18 <=> prop18o }