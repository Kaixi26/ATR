open main
pred idK49LPBuHjmSFiyXWp_prop7 {
	
	always (all t:pos.Train | eventually no t.pos)
}
pred __repair { idK49LPBuHjmSFiyXWp_prop7 }
check __repair { idK49LPBuHjmSFiyXWp_prop7 <=> prop7o }