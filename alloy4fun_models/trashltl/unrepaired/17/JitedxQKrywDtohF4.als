open main
pred idJitedxQKrywDtohF4_prop18 {
	all f : Protected | always (f in Trash' => always (f not in Protected))
}
pred __repair { idJitedxQKrywDtohF4_prop18 }
check __repair { idJitedxQKrywDtohF4_prop18 <=> prop18o }