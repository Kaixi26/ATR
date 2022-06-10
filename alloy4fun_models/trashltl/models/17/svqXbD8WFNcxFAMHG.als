open main
pred idsvqXbD8WFNcxFAMHG_prop18 {
	always all f : Protected | always f not in Protected' => f in Trash'
}
pred __repair { idsvqXbD8WFNcxFAMHG_prop18 }
check __repair { idsvqXbD8WFNcxFAMHG_prop18 <=> prop18o }