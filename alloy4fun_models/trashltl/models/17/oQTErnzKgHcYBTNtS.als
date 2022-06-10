open main
pred idoQTErnzKgHcYBTNtS_prop18 {
 
	always (all f:Protected |  f not in Protected releases f in Trash  )
}
pred __repair { idoQTErnzKgHcYBTNtS_prop18 }
check __repair { idoQTErnzKgHcYBTNtS_prop18 <=> prop18o }