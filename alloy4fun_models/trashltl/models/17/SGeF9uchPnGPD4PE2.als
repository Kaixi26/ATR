open main
pred idSGeF9uchPnGPD4PE2_prop18 {
	always (all f:Protected | f not in Protected since f in Trash)
}
pred __repair { idSGeF9uchPnGPD4PE2_prop18 }
check __repair { idSGeF9uchPnGPD4PE2_prop18 <=> prop18o }