open main
pred idXrxPPWtKJQxXdNtrj_prop18 {
	always all f : Protected | f not in Protected' => f in Trash'
}
pred __repair { idXrxPPWtKJQxXdNtrj_prop18 }
check __repair { idXrxPPWtKJQxXdNtrj_prop18 <=> prop18o }