open main
pred idWxiPx7hkfcRiRLj46_prop7 {
	
	all t : Train | eventually (always no t.pos)
}
pred __repair { idWxiPx7hkfcRiRLj46_prop7 }
check __repair { idWxiPx7hkfcRiRLj46_prop7 <=> prop7o }