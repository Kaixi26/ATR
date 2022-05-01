open main
pred idcsCrmZCcBPsyvATQa_prop10 {
	always all f : Protected | always f in Protected
}
pred __repair { idcsCrmZCcBPsyvATQa_prop10 }
check __repair { idcsCrmZCcBPsyvATQa_prop10 <=> prop10o }