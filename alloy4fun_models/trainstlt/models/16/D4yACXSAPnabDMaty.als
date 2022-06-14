open main
pred idD4yACXSAPnabDMaty_prop17 {
	
	always (some t:Train | historically lone (Train.pos + t) and eventually (t.pos in Exit and historically lone (pos.Exit + t)))
}
pred __repair { idD4yACXSAPnabDMaty_prop17 }
check __repair { idD4yACXSAPnabDMaty_prop17 <=> prop17o }